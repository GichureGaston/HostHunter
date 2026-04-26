import '../entities/dns_record_entity.dart';
import '../entities/dns_resolver_entity.dart';

abstract class DnsRepository {
  Future<DnsRecordEntity> resolve({
    required String name,
    required int type,
    required DnsResolverEntity resolver,
  });
}
