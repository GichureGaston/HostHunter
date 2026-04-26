import '../entities/dns_record_entity.dart';
import '../entities/dns_resolver_entity.dart';
import '../repositories/dns_repository.dart';

class GetDnsRecordsUseCase {
  final DnsRepository repository;

  GetDnsRecordsUseCase(this.repository);

  Future<DnsRecordEntity> call({
    required String name,
    required int type,
    required DnsResolverEntity resolver,
  }) {
    return repository.resolve(name: name, type: type, resolver: resolver);
  }
}
