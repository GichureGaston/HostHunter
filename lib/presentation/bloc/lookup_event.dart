import 'package:equatable/equatable.dart';
import '../../../domain/entities/dns_resolver_entity.dart';
import '../../../domain/entities/dns_resource_record_type_entity.dart';

abstract class LookupEvent extends Equatable {
  const LookupEvent();

  @override
  List<Object?> get props => [];
}

class LookupStarted extends LookupEvent {
  final String domain;
  final DnsResourceRecordTypeEntity type;
  final DnsResolverEntity resolver;

  const LookupStarted({
    required this.domain,
    required this.type,
    required this.resolver,
  });

  @override
  List<Object?> get props => [domain, type, resolver];
}
