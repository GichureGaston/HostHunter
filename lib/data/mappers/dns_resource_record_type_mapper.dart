import '../../domain/entities/dns_resource_record_type_entity.dart';
import '../models/dns_resource_record_type_model.dart';

class DnsResourceRecordTypeMapper {
  static DnsResourceRecordTypeModel toModel(
    DnsResourceRecordTypeEntity entity,
  ) => DnsResourceRecordTypeModel(entity.name, entity.value);

  static DnsResourceRecordTypeEntity fromModel(
    DnsResourceRecordTypeModel model,
  ) => DnsResourceRecordTypeEntity(name: model.name, value: model.value);
}
