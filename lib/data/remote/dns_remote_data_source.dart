import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/dns_record_model.dart';

abstract class DnsRemoteDataSource {
  Future<DnsRecordModel> resolve({
    required String name,
    required int type,
    required String url,
  });
}

class DnsRemoteDataSourceImpl implements DnsRemoteDataSource {
  final http.Client client;

  DnsRemoteDataSourceImpl({required this.client});

  @override
  Future<DnsRecordModel> resolve({
    required String name,
    required int type,
    required String url,
  }) async {
    final uri = Uri.parse(url).replace(queryParameters: {
      'name': name,
      'type': type.toString(),
    });

    final response = await client.get(
      uri,
      headers: {'Accept': 'application/dns-json'},
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return DnsRecordModel.fromJson(data);
    } else {
      throw Exception('Failed to resolve DNS: ${response.statusCode}');
    }
  }
}
