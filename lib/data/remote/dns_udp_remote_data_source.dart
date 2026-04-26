import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import '../models/dns_record_model.dart';
import 'dns_packet_codec.dart';
import 'dns_remote_data_source.dart';

class DnsUdpRemoteDataSource implements DnsRemoteDataSource {
  final String serverAddress;
  final int port;

  DnsUdpRemoteDataSource({this.serverAddress = '1.1.1.1', this.port = 53});

  @override
  Future<DnsRecordModel> resolve({
    required String name,
    required int type,
    required String url,
  }) async {
    final query = DnsPacketCodec.encodeQuery(name, type);
    final completer = Completer<DnsRecordModel>();

    RawDatagramSocket.bind(InternetAddress.anyIPv4, 0).then((socket) {
      socket.send(query, InternetAddress(serverAddress), port);

      socket.listen(
        (RawSocketEvent event) {
          if (event == RawSocketEvent.read) {
            final datagram = socket.receive();
            if (datagram != null) {
              try {
                final response = DnsPacketCodec.decodeResponse(datagram.data);
                completer.complete(response);
              } catch (e) {
                completer.completeError(e);
              }
              socket.close();
            }
          }
        },
        onError: (e) {
          completer.completeError(e);
          socket.close();
        },
        onDone: () {
          if (!completer.isCompleted) {
            completer.completeError(
              Exception('Socket closed without response'),
            );
          }
        },
      );

      Future.delayed(const Duration(seconds: 5), () {
        if (!completer.isCompleted) {
          completer.completeError(TimeoutException('DNS query timed out'));
          socket.close();
        }
      });
    });

    return completer.future;
  }
}
