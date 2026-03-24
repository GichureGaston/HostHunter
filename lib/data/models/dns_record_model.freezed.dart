// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dns_record_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DnsRecordModel {

 int? get status;@JsonKey(name: 'TC') bool? get truncatedFlag;@JsonKey(name: 'RD') bool? get recursionDesired;@JsonKey(name: 'RA') bool? get recursionAvailable;@JsonKey(name: 'AD') bool? get authenticatedData;@JsonKey(name: 'CD') bool? get checkingDisabled;@JsonKey(name: 'Answer') List<Answer>? get answer;@JsonKey(name: 'Comment') dynamic get comment;@JsonKey(name: 'edns_client_subnet') String? get ednsClientSubnet;
/// Create a copy of DnsRecordModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DnsRecordModelCopyWith<DnsRecordModel> get copyWith => _$DnsRecordModelCopyWithImpl<DnsRecordModel>(this as DnsRecordModel, _$identity);

  /// Serializes this DnsRecordModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DnsRecordModel&&(identical(other.status, status) || other.status == status)&&(identical(other.truncatedFlag, truncatedFlag) || other.truncatedFlag == truncatedFlag)&&(identical(other.recursionDesired, recursionDesired) || other.recursionDesired == recursionDesired)&&(identical(other.recursionAvailable, recursionAvailable) || other.recursionAvailable == recursionAvailable)&&(identical(other.authenticatedData, authenticatedData) || other.authenticatedData == authenticatedData)&&(identical(other.checkingDisabled, checkingDisabled) || other.checkingDisabled == checkingDisabled)&&const DeepCollectionEquality().equals(other.answer, answer)&&const DeepCollectionEquality().equals(other.comment, comment)&&(identical(other.ednsClientSubnet, ednsClientSubnet) || other.ednsClientSubnet == ednsClientSubnet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,truncatedFlag,recursionDesired,recursionAvailable,authenticatedData,checkingDisabled,const DeepCollectionEquality().hash(answer),const DeepCollectionEquality().hash(comment),ednsClientSubnet);

@override
String toString() {
  return 'DnsRecordModel(status: $status, truncatedFlag: $truncatedFlag, recursionDesired: $recursionDesired, recursionAvailable: $recursionAvailable, authenticatedData: $authenticatedData, checkingDisabled: $checkingDisabled, answer: $answer, comment: $comment, ednsClientSubnet: $ednsClientSubnet)';
}


}

/// @nodoc
abstract mixin class $DnsRecordModelCopyWith<$Res>  {
  factory $DnsRecordModelCopyWith(DnsRecordModel value, $Res Function(DnsRecordModel) _then) = _$DnsRecordModelCopyWithImpl;
@useResult
$Res call({
 int? status,@JsonKey(name: 'TC') bool? truncatedFlag,@JsonKey(name: 'RD') bool? recursionDesired,@JsonKey(name: 'RA') bool? recursionAvailable,@JsonKey(name: 'AD') bool? authenticatedData,@JsonKey(name: 'CD') bool? checkingDisabled,@JsonKey(name: 'Answer') List<Answer>? answer,@JsonKey(name: 'Comment') dynamic comment,@JsonKey(name: 'edns_client_subnet') String? ednsClientSubnet
});




}
/// @nodoc
class _$DnsRecordModelCopyWithImpl<$Res>
    implements $DnsRecordModelCopyWith<$Res> {
  _$DnsRecordModelCopyWithImpl(this._self, this._then);

  final DnsRecordModel _self;
  final $Res Function(DnsRecordModel) _then;

/// Create a copy of DnsRecordModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? truncatedFlag = freezed,Object? recursionDesired = freezed,Object? recursionAvailable = freezed,Object? authenticatedData = freezed,Object? checkingDisabled = freezed,Object? answer = freezed,Object? comment = freezed,Object? ednsClientSubnet = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,truncatedFlag: freezed == truncatedFlag ? _self.truncatedFlag : truncatedFlag // ignore: cast_nullable_to_non_nullable
as bool?,recursionDesired: freezed == recursionDesired ? _self.recursionDesired : recursionDesired // ignore: cast_nullable_to_non_nullable
as bool?,recursionAvailable: freezed == recursionAvailable ? _self.recursionAvailable : recursionAvailable // ignore: cast_nullable_to_non_nullable
as bool?,authenticatedData: freezed == authenticatedData ? _self.authenticatedData : authenticatedData // ignore: cast_nullable_to_non_nullable
as bool?,checkingDisabled: freezed == checkingDisabled ? _self.checkingDisabled : checkingDisabled // ignore: cast_nullable_to_non_nullable
as bool?,answer: freezed == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as List<Answer>?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as dynamic,ednsClientSubnet: freezed == ednsClientSubnet ? _self.ednsClientSubnet : ednsClientSubnet // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DnsRecordModel].
extension DnsRecordModelPatterns on DnsRecordModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DnsRecordModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DnsRecordModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DnsRecordModel value)  $default,){
final _that = this;
switch (_that) {
case _DnsRecordModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DnsRecordModel value)?  $default,){
final _that = this;
switch (_that) {
case _DnsRecordModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? status, @JsonKey(name: 'TC')  bool? truncatedFlag, @JsonKey(name: 'RD')  bool? recursionDesired, @JsonKey(name: 'RA')  bool? recursionAvailable, @JsonKey(name: 'AD')  bool? authenticatedData, @JsonKey(name: 'CD')  bool? checkingDisabled, @JsonKey(name: 'Answer')  List<Answer>? answer, @JsonKey(name: 'Comment')  dynamic comment, @JsonKey(name: 'edns_client_subnet')  String? ednsClientSubnet)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DnsRecordModel() when $default != null:
return $default(_that.status,_that.truncatedFlag,_that.recursionDesired,_that.recursionAvailable,_that.authenticatedData,_that.checkingDisabled,_that.answer,_that.comment,_that.ednsClientSubnet);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? status, @JsonKey(name: 'TC')  bool? truncatedFlag, @JsonKey(name: 'RD')  bool? recursionDesired, @JsonKey(name: 'RA')  bool? recursionAvailable, @JsonKey(name: 'AD')  bool? authenticatedData, @JsonKey(name: 'CD')  bool? checkingDisabled, @JsonKey(name: 'Answer')  List<Answer>? answer, @JsonKey(name: 'Comment')  dynamic comment, @JsonKey(name: 'edns_client_subnet')  String? ednsClientSubnet)  $default,) {final _that = this;
switch (_that) {
case _DnsRecordModel():
return $default(_that.status,_that.truncatedFlag,_that.recursionDesired,_that.recursionAvailable,_that.authenticatedData,_that.checkingDisabled,_that.answer,_that.comment,_that.ednsClientSubnet);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? status, @JsonKey(name: 'TC')  bool? truncatedFlag, @JsonKey(name: 'RD')  bool? recursionDesired, @JsonKey(name: 'RA')  bool? recursionAvailable, @JsonKey(name: 'AD')  bool? authenticatedData, @JsonKey(name: 'CD')  bool? checkingDisabled, @JsonKey(name: 'Answer')  List<Answer>? answer, @JsonKey(name: 'Comment')  dynamic comment, @JsonKey(name: 'edns_client_subnet')  String? ednsClientSubnet)?  $default,) {final _that = this;
switch (_that) {
case _DnsRecordModel() when $default != null:
return $default(_that.status,_that.truncatedFlag,_that.recursionDesired,_that.recursionAvailable,_that.authenticatedData,_that.checkingDisabled,_that.answer,_that.comment,_that.ednsClientSubnet);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
class _DnsRecordModel extends DnsRecordModel {
  const _DnsRecordModel({this.status, @JsonKey(name: 'TC') this.truncatedFlag, @JsonKey(name: 'RD') this.recursionDesired, @JsonKey(name: 'RA') this.recursionAvailable, @JsonKey(name: 'AD') this.authenticatedData, @JsonKey(name: 'CD') this.checkingDisabled, @JsonKey(name: 'Answer') final  List<Answer>? answer, @JsonKey(name: 'Comment') this.comment, @JsonKey(name: 'edns_client_subnet') this.ednsClientSubnet}): _answer = answer,super._();
  factory _DnsRecordModel.fromJson(Map<String, dynamic> json) => _$DnsRecordModelFromJson(json);

@override final  int? status;
@override@JsonKey(name: 'TC') final  bool? truncatedFlag;
@override@JsonKey(name: 'RD') final  bool? recursionDesired;
@override@JsonKey(name: 'RA') final  bool? recursionAvailable;
@override@JsonKey(name: 'AD') final  bool? authenticatedData;
@override@JsonKey(name: 'CD') final  bool? checkingDisabled;
 final  List<Answer>? _answer;
@override@JsonKey(name: 'Answer') List<Answer>? get answer {
  final value = _answer;
  if (value == null) return null;
  if (_answer is EqualUnmodifiableListView) return _answer;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'Comment') final  dynamic comment;
@override@JsonKey(name: 'edns_client_subnet') final  String? ednsClientSubnet;

/// Create a copy of DnsRecordModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DnsRecordModelCopyWith<_DnsRecordModel> get copyWith => __$DnsRecordModelCopyWithImpl<_DnsRecordModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DnsRecordModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DnsRecordModel&&(identical(other.status, status) || other.status == status)&&(identical(other.truncatedFlag, truncatedFlag) || other.truncatedFlag == truncatedFlag)&&(identical(other.recursionDesired, recursionDesired) || other.recursionDesired == recursionDesired)&&(identical(other.recursionAvailable, recursionAvailable) || other.recursionAvailable == recursionAvailable)&&(identical(other.authenticatedData, authenticatedData) || other.authenticatedData == authenticatedData)&&(identical(other.checkingDisabled, checkingDisabled) || other.checkingDisabled == checkingDisabled)&&const DeepCollectionEquality().equals(other._answer, _answer)&&const DeepCollectionEquality().equals(other.comment, comment)&&(identical(other.ednsClientSubnet, ednsClientSubnet) || other.ednsClientSubnet == ednsClientSubnet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,truncatedFlag,recursionDesired,recursionAvailable,authenticatedData,checkingDisabled,const DeepCollectionEquality().hash(_answer),const DeepCollectionEquality().hash(comment),ednsClientSubnet);

@override
String toString() {
  return 'DnsRecordModel(status: $status, truncatedFlag: $truncatedFlag, recursionDesired: $recursionDesired, recursionAvailable: $recursionAvailable, authenticatedData: $authenticatedData, checkingDisabled: $checkingDisabled, answer: $answer, comment: $comment, ednsClientSubnet: $ednsClientSubnet)';
}


}

/// @nodoc
abstract mixin class _$DnsRecordModelCopyWith<$Res> implements $DnsRecordModelCopyWith<$Res> {
  factory _$DnsRecordModelCopyWith(_DnsRecordModel value, $Res Function(_DnsRecordModel) _then) = __$DnsRecordModelCopyWithImpl;
@override @useResult
$Res call({
 int? status,@JsonKey(name: 'TC') bool? truncatedFlag,@JsonKey(name: 'RD') bool? recursionDesired,@JsonKey(name: 'RA') bool? recursionAvailable,@JsonKey(name: 'AD') bool? authenticatedData,@JsonKey(name: 'CD') bool? checkingDisabled,@JsonKey(name: 'Answer') List<Answer>? answer,@JsonKey(name: 'Comment') dynamic comment,@JsonKey(name: 'edns_client_subnet') String? ednsClientSubnet
});




}
/// @nodoc
class __$DnsRecordModelCopyWithImpl<$Res>
    implements _$DnsRecordModelCopyWith<$Res> {
  __$DnsRecordModelCopyWithImpl(this._self, this._then);

  final _DnsRecordModel _self;
  final $Res Function(_DnsRecordModel) _then;

/// Create a copy of DnsRecordModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? truncatedFlag = freezed,Object? recursionDesired = freezed,Object? recursionAvailable = freezed,Object? authenticatedData = freezed,Object? checkingDisabled = freezed,Object? answer = freezed,Object? comment = freezed,Object? ednsClientSubnet = freezed,}) {
  return _then(_DnsRecordModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,truncatedFlag: freezed == truncatedFlag ? _self.truncatedFlag : truncatedFlag // ignore: cast_nullable_to_non_nullable
as bool?,recursionDesired: freezed == recursionDesired ? _self.recursionDesired : recursionDesired // ignore: cast_nullable_to_non_nullable
as bool?,recursionAvailable: freezed == recursionAvailable ? _self.recursionAvailable : recursionAvailable // ignore: cast_nullable_to_non_nullable
as bool?,authenticatedData: freezed == authenticatedData ? _self.authenticatedData : authenticatedData // ignore: cast_nullable_to_non_nullable
as bool?,checkingDisabled: freezed == checkingDisabled ? _self.checkingDisabled : checkingDisabled // ignore: cast_nullable_to_non_nullable
as bool?,answer: freezed == answer ? _self._answer : answer // ignore: cast_nullable_to_non_nullable
as List<Answer>?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as dynamic,ednsClientSubnet: freezed == ednsClientSubnet ? _self.ednsClientSubnet : ednsClientSubnet // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Question {

 String get name; int get type;
/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionCopyWith<Question> get copyWith => _$QuestionCopyWithImpl<Question>(this as Question, _$identity);

  /// Serializes this Question to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Question&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type);

@override
String toString() {
  return 'Question(name: $name, type: $type)';
}


}

/// @nodoc
abstract mixin class $QuestionCopyWith<$Res>  {
  factory $QuestionCopyWith(Question value, $Res Function(Question) _then) = _$QuestionCopyWithImpl;
@useResult
$Res call({
 String name, int type
});




}
/// @nodoc
class _$QuestionCopyWithImpl<$Res>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._self, this._then);

  final Question _self;
  final $Res Function(Question) _then;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? type = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Question].
extension QuestionPatterns on Question {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Question value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Question() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Question value)  $default,){
final _that = this;
switch (_that) {
case _Question():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Question value)?  $default,){
final _that = this;
switch (_that) {
case _Question() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Question() when $default != null:
return $default(_that.name,_that.type);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int type)  $default,) {final _that = this;
switch (_that) {
case _Question():
return $default(_that.name,_that.type);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int type)?  $default,) {final _that = this;
switch (_that) {
case _Question() when $default != null:
return $default(_that.name,_that.type);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
class _Question implements Question {
  const _Question({required this.name, required this.type});
  factory _Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);

@override final  String name;
@override final  int type;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionCopyWith<_Question> get copyWith => __$QuestionCopyWithImpl<_Question>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Question&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type);

@override
String toString() {
  return 'Question(name: $name, type: $type)';
}


}

/// @nodoc
abstract mixin class _$QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$QuestionCopyWith(_Question value, $Res Function(_Question) _then) = __$QuestionCopyWithImpl;
@override @useResult
$Res call({
 String name, int type
});




}
/// @nodoc
class __$QuestionCopyWithImpl<$Res>
    implements _$QuestionCopyWith<$Res> {
  __$QuestionCopyWithImpl(this._self, this._then);

  final _Question _self;
  final $Res Function(_Question) _then;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? type = null,}) {
  return _then(_Question(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$Answer {

 String get name; int get type;@JsonKey(name: 'TTL') int get ttl; String get data;
/// Create a copy of Answer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnswerCopyWith<Answer> get copyWith => _$AnswerCopyWithImpl<Answer>(this as Answer, _$identity);

  /// Serializes this Answer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Answer&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.ttl, ttl) || other.ttl == ttl)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,ttl,data);

@override
String toString() {
  return 'Answer(name: $name, type: $type, ttl: $ttl, data: $data)';
}


}

/// @nodoc
abstract mixin class $AnswerCopyWith<$Res>  {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) _then) = _$AnswerCopyWithImpl;
@useResult
$Res call({
 String name, int type,@JsonKey(name: 'TTL') int ttl, String data
});




}
/// @nodoc
class _$AnswerCopyWithImpl<$Res>
    implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(this._self, this._then);

  final Answer _self;
  final $Res Function(Answer) _then;

/// Create a copy of Answer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? type = null,Object? ttl = null,Object? data = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int,ttl: null == ttl ? _self.ttl : ttl // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Answer].
extension AnswerPatterns on Answer {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Answer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Answer() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Answer value)  $default,){
final _that = this;
switch (_that) {
case _Answer():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Answer value)?  $default,){
final _that = this;
switch (_that) {
case _Answer() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int type, @JsonKey(name: 'TTL')  int ttl,  String data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Answer() when $default != null:
return $default(_that.name,_that.type,_that.ttl,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int type, @JsonKey(name: 'TTL')  int ttl,  String data)  $default,) {final _that = this;
switch (_that) {
case _Answer():
return $default(_that.name,_that.type,_that.ttl,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int type, @JsonKey(name: 'TTL')  int ttl,  String data)?  $default,) {final _that = this;
switch (_that) {
case _Answer() when $default != null:
return $default(_that.name,_that.type,_that.ttl,_that.data);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
class _Answer implements Answer {
  const _Answer({required this.name, required this.type, @JsonKey(name: 'TTL') required this.ttl, required this.data});
  factory _Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);

@override final  String name;
@override final  int type;
@override@JsonKey(name: 'TTL') final  int ttl;
@override final  String data;

/// Create a copy of Answer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnswerCopyWith<_Answer> get copyWith => __$AnswerCopyWithImpl<_Answer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnswerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Answer&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.ttl, ttl) || other.ttl == ttl)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,ttl,data);

@override
String toString() {
  return 'Answer(name: $name, type: $type, ttl: $ttl, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AnswerCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$AnswerCopyWith(_Answer value, $Res Function(_Answer) _then) = __$AnswerCopyWithImpl;
@override @useResult
$Res call({
 String name, int type,@JsonKey(name: 'TTL') int ttl, String data
});




}
/// @nodoc
class __$AnswerCopyWithImpl<$Res>
    implements _$AnswerCopyWith<$Res> {
  __$AnswerCopyWithImpl(this._self, this._then);

  final _Answer _self;
  final $Res Function(_Answer) _then;

/// Create a copy of Answer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? type = null,Object? ttl = null,Object? data = null,}) {
  return _then(_Answer(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int,ttl: null == ttl ? _self.ttl : ttl // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
