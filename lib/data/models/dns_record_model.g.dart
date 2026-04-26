// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dns_record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DnsRecordModel _$DnsRecordModelFromJson(Map<String, dynamic> json) =>
    _DnsRecordModel(
      status: (json['status'] as num?)?.toInt(),
      truncatedFlag: json['TC'] as bool?,
      recursionDesired: json['RD'] as bool?,
      recursionAvailable: json['RA'] as bool?,
      authenticatedData: json['AD'] as bool?,
      checkingDisabled: json['CD'] as bool?,
      answer: (json['Answer'] as List<dynamic>?)
          ?.map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
      comment: json['Comment'],
      ednsClientSubnet: json['edns_client_subnet'] as String?,
    );

Map<String, dynamic> _$DnsRecordModelToJson(_DnsRecordModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'TC': instance.truncatedFlag,
      'RD': instance.recursionDesired,
      'RA': instance.recursionAvailable,
      'AD': instance.authenticatedData,
      'CD': instance.checkingDisabled,
      'Answer': instance.answer?.map((e) => e.toJson()).toList(),
      'Comment': instance.comment,
      'edns_client_subnet': instance.ednsClientSubnet,
    };

_Question _$QuestionFromJson(Map<String, dynamic> json) => _Question(
  name: json['name'] as String,
  type: (json['type'] as num).toInt(),
);

Map<String, dynamic> _$QuestionToJson(_Question instance) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
};

_Answer _$AnswerFromJson(Map<String, dynamic> json) => _Answer(
  name: json['name'] as String,
  type: (json['type'] as num).toInt(),
  ttl: (json['TTL'] as num).toInt(),
  data: json['data'] as String,
);

Map<String, dynamic> _$AnswerToJson(_Answer instance) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'TTL': instance.ttl,
  'data': instance.data,
};
