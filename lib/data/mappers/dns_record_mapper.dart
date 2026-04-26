import '../../domain/entities/dns_record_entity.dart';
import '../models/dns_record_model.dart';

class DnsRecordMapper {
  static DnsRecordEntity fromModel(DnsRecordModel model) {
    return DnsRecordEntity(
      truncatedFlag: model.truncatedFlag,
      recursionDesired: model.recursionDesired,
      recursionAvailable: model.recursionAvailable,
      authenticatedData: model.authenticatedData,
      checkingDisabled: model.checkingDisabled,
      answer: model.answer,
      content: model.comment,
      ednsClientSubnet: model.ednsClientSubnet,
    );
  }
}
