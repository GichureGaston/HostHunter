import '../../domain/entities/dns_resolver_entity.dart';
import '../models/dns_resolver_model.dart';

class DnsResolverMapper {
  static DnsResolverModel toModel(DnsResolverEntity entity) => DnsResolverModel(
    name: entity.name,
    url: Uri.parse(entity.url),
    supportsGet: entity.supportsGet,
    isTrusted: entity.isTrusted,
  );

  static DnsResolverEntity fromModel(
    DnsResolverModel model, {
    required int id,
  }) => DnsResolverEntity(
    id: id,
    name: model.name,
    url: model.url.toString(),
    supportsGet: model.supportsGet,
    isTrusted: model.isTrusted,
  );
}
