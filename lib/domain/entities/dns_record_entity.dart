import 'package:equatable/equatable.dart';

import '../../data/models/dns_record_model.dart';

class DnsRecordEntity extends Equatable {
  const DnsRecordEntity({
    this.truncatedFlag,
    this.recursionDesired,
    this.recursionAvailable,
    this.authenticatedData,
    this.checkingDisabled,
    this.answer,
    this.content,
    this.ednsClientSubnet,
  });
  final bool? truncatedFlag;
  final bool? recursionDesired;
  final bool? recursionAvailable;
  final bool? authenticatedData;
  final bool? checkingDisabled;
  final List<Answer>? answer;
  final dynamic content;
  final String? ednsClientSubnet;
  @override
  // TODO: implement props
  List<Object?> get props => [
    truncatedFlag,
    recursionAvailable,
    recursionDesired,
    authenticatedData,
    checkingDisabled,
    answer,
    content,
    ednsClientSubnet,
  ];
  DnsRecordEntity copyWith({
    bool? truncatedFlag,
    bool? recursionDesired,
    bool? recursionAvailable,
    bool? authenticatedData,
    bool? checkingDisabled,
    List<Answer>? answer,
    dynamic content,
    String? ednsClientSubnet,
  }) {
    return DnsRecordEntity(
      truncatedFlag: truncatedFlag ?? this.truncatedFlag,
      recursionAvailable: recursionAvailable ?? this.recursionAvailable,
      recursionDesired: recursionDesired ?? this.recursionDesired,
      authenticatedData: authenticatedData ?? this.authenticatedData,
      checkingDisabled: checkingDisabled ?? this.checkingDisabled,
      answer: answer ?? this.answer,
      content: content ?? this.content,
      ednsClientSubnet: ednsClientSubnet ?? this.ednsClientSubnet,
    );
  }
}
