import 'package:freezed_annotation/freezed_annotation.dart';

part 'dns_record_model.freezed.dart';
part 'dns_record_model.g.dart';

@freezed
abstract class DnsRecordModel with _$DnsRecordModel {
  const DnsRecordModel._();

  const factory DnsRecordModel({
    int? status,
    @JsonKey(name: 'TC') bool? truncatedFlag,
    @JsonKey(name: 'RD') bool? recursionDesired,
    @JsonKey(name: 'RA') bool? recursionAvailable,
    @JsonKey(name: 'AD') bool? authenticatedData,
    @JsonKey(name: 'CD') bool? checkingDisabled,
    @JsonKey(name: 'Answer') List<Answer>? answer,
    @JsonKey(name: 'Comment') dynamic comment,
    @JsonKey(name: 'edns_client_subnet') String? ednsClientSubnet,
  }) = _DnsRecordModel;

  factory DnsRecordModel.fromJson(Map<String, dynamic> json) =>
      _$DnsRecordModelFromJson(json);

  bool get isFailure => status == 2;
  bool get isSuccess => status == 0;
}

@freezed
abstract class Question with _$Question {
  const factory Question({required String name, required int type}) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}

@freezed
abstract class Answer with _$Answer {
  const factory Answer({
    required String name,
    required int type,
    @JsonKey(name: 'TTL') required int ttl,
    required String data,
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);

  static List<Answer> listFromJson(List<dynamic> jsonList) =>
      jsonList.map((e) => Answer.fromJson(e as Map<String, dynamic>)).toList();
}
