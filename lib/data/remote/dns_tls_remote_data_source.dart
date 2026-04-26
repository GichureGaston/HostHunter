import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import '../models/dns_record_model.dart';
import 'dns_packet_codec.dart';
import 'dns_remote_data_source.dart';

/// Implements DNS-over-TLS (DoT) as defined in RFC 7858.
///
/// DoT wraps standard binary DNS packets in a TLS connection on port 853.
/// Each message is prefixed with a 2-byte big-endian length field,
/// which is the key difference from raw UDP.
class DnsTlsRemoteDataSource implements DnsRemoteDataSource {
  final String serverAddress;
  final int port;

  DnsTlsRemoteDataSource({
    this.serverAddress = '1.1.1.1',
    this.port = 853,
  });

  @override
  Future<DnsRecordModel> resolve({
    required String name,
    required int type,
    required String url,
  }) async {
    final query = DnsPacketCodec.encodeQuery(name, type);

    // DoT requires a 2-byte length prefix before the DNS packet (RFC 7858 §3.3)
    final lengthPrefix = ByteData(2);
    lengthPrefix.setUint16(0, query.length);
    final framedQuery = Uint8List.fromList([
      ...lengthPrefix.buffer.asUint8List(),
      ...query,
    ]);

    final completer = Completer<DnsRecordModel>();

    SecureSocket.connect(
      serverAddress,
      port,
      onBadCertificate: (_) => false, // Reject invalid certificates
    ).then((socket) {
      socket.add(framedQuery);

      final buffer = BytesBuilder();

      socket.listen(
        (data) {
          buffer.add(data);
          final bytes = buffer.toBytes();

          // Wait until we have at least the 2-byte length prefix
          if (bytes.length < 2) return;

          final messageLength = ByteData.sublistView(
            Uint8List.fromList(bytes),
            0,
            2,
          ).getUint16(0);

          // Wait until the full response has arrived
          if (bytes.length < 2 + messageLength) return;

          final responseBytes = Uint8List.fromList(
            bytes.sublist(2, 2 + messageLength),
          );

          try {
            final response = DnsPacketCodec.decodeResponse(responseBytes);
            completer.complete(response);
          } catch (e) {
            completer.completeError(e);
          } finally {
            socket.destroy();
          }
        },
        onError: (e) {
          completer.completeError(e);
          socket.destroy();
        },
        onDone: () {
          if (!completer.isCompleted) {
            completer.completeError(
              Exception('TLS connection closed before a full response was received'),
            );
          }
        },
      );

      Future.delayed(const Duration(seconds: 5), () {
        if (!completer.isCompleted) {
          completer.completeError(TimeoutException('DoT query timed out'));
          socket.destroy();
        }
      });
    }).catchError((e) {
      completer.completeError(e);
    });

    return completer.future;
  }
}
