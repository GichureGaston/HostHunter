import 'dart:math';
import 'dart:typed_data';

import '../models/dns_record_model.dart';

class DnsPacketCodec {
  static Uint8List encodeQuery(String name, int type) {
    final random = Random();
    final id = random.nextInt(65535);

    final header = ByteData(12);
    header.setUint16(0, id);
    header.setUint16(2, 0x0100);
    header.setUint16(4, 1);
    header.setUint16(6, 0);
    header.setUint16(8, 0);
    header.setUint16(10, 0);

    final qname = _encodeName(name);
    final question = ByteData(4);
    question.setUint16(0, type);
    question.setUint16(2, 1);

    final packet = BytesBuilder();
    packet.add(header.buffer.asUint8List());
    packet.add(qname);
    packet.add(question.buffer.asUint8List());

    return packet.toBytes();
  }

  static Uint8List _encodeName(String name) {
    final builder = BytesBuilder();
    final labels = name.split('.');
    for (var label in labels) {
      if (label.isEmpty) continue;
      final bytes = Uint8List.fromList(label.codeUnits);
      builder.addByte(bytes.length);
      builder.add(bytes);
    }
    builder.addByte(0);
    return builder.toBytes();
  }

  static DnsRecordModel decodeResponse(Uint8List bytes) {
    final reader = DnsByteReader(bytes);

    final id = reader.readUint16();
    final flags = reader.readUint16();
    final qdCount = reader.readUint16();
    final anCount = reader.readUint16();
    final nsCount = reader.readUint16();
    final arCount = reader.readUint16();

    final status = flags & 0x000F;

    for (var i = 0; i < qdCount; i++) {
      reader.readName();
      reader.readUint16();
      reader.readUint16();
    }

    final answers = <Answer>[];
    for (var i = 0; i < anCount; i++) {
      final name = reader.readName();
      final type = reader.readUint16();
      final class_ = reader.readUint16();
      final ttl = reader.readUint32();
      final rdLength = reader.readUint16();

      String data = '';
      if (type == 1) {
        final ip = reader.readBytes(4);
        data = ip.join('.');
      } else if (type == 28) {
        final ip = reader.readBytes(16);
        final parts = <String>[];
        for (var j = 0; j < 16; j += 2) {
          parts.add(((ip[j] << 8) | ip[j + 1]).toRadixString(16));
        }
        data = parts.join(':');
      } else if (type == 15) {
        final preference = reader.readUint16();
        final exchange = reader.readName();
        data = 'Priority: $preference, Host: $exchange';
      } else if (type == 16) {
        final end = reader.offset + rdLength;
        final parts = <String>[];
        while (reader.offset < end) {
          final len = reader.readByte();
          parts.add(String.fromCharCodes(reader.readBytes(len)));
        }
        data = parts.join(' ');
      } else if (type == 5 || type == 2 || type == 12) {
        data = reader.readName();
      } else {
        reader.readBytes(rdLength);
        data = '[Unsupported Type $type]';
      }

      answers.add(Answer(name: name, type: type, ttl: ttl, data: data));
    }

    return DnsRecordModel(status: status, answer: answers);
  }
}

class DnsByteReader {
  final Uint8List bytes;
  int offset = 0;

  DnsByteReader(this.bytes);

  int readByte() => bytes[offset++];

  int readUint16() {
    final val = ByteData.sublistView(bytes, offset, offset + 2).getUint16(0);
    offset += 2;
    return val;
  }

  int readUint32() {
    final val = ByteData.sublistView(bytes, offset, offset + 4).getUint32(0);
    offset += 4;
    return val;
  }

  Uint8List readBytes(int length) {
    final result = bytes.sublist(offset, offset + length);
    offset += length;
    return result;
  }

  String readName() {
    final result = <String>[];
    int? originalOffset;

    while (true) {
      final length = bytes[offset];

      if ((length & 0xC0) == 0xC0) {
        final pointer = ((length & 0x3F) << 8) | bytes[offset + 1];
        originalOffset ??= offset + 2;
        offset = pointer;
        continue;
      }

      offset++;
      if (length == 0) break;

      final label = String.fromCharCodes(
        bytes.sublist(offset, offset + length),
      );
      result.add(label);
      offset += length;
    }

    if (originalOffset != null) {
      offset = originalOffset;
    }

    return result.join('.');
  }
}
