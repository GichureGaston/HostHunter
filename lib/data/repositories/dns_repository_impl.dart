import '../../domain/entities/dns_record_entity.dart';
import '../../domain/entities/dns_resolver_entity.dart';
import '../../domain/repositories/dns_repository.dart';
import '../mappers/dns_record_mapper.dart';
import '../remote/dns_remote_data_source.dart';

class DnsRepositoryImpl implements DnsRepository {
  final DnsRemoteDataSource dohDataSource;
  final DnsRemoteDataSource udpDataSource;
  final DnsRemoteDataSource tlsDataSource;

  DnsRepositoryImpl({
    required this.dohDataSource,
    required this.udpDataSource,
    required this.tlsDataSource,
  });

  @override
  Future<DnsRecordEntity> resolve({
    required String name,
    required int type,
    required DnsResolverEntity resolver,
  }) async {
    final dataSource = switch (resolver.type) {
      ResolverType.udp => udpDataSource,
      ResolverType.dot => tlsDataSource,
      ResolverType.doh => dohDataSource,
    };

    final model = await dataSource.resolve(
      name: name,
      type: type,
      url: resolver.url,
    );
    return DnsRecordMapper.fromModel(model);
  }
}
