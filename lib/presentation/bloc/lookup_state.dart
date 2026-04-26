import 'package:equatable/equatable.dart';
import '../../../domain/entities/dns_record_entity.dart';

abstract class LookupState extends Equatable {
  const LookupState();

  @override
  List<Object?> get props => [];
}

class LookupInitial extends LookupState {}

class LookupLoading extends LookupState {}

class LookupSuccess extends LookupState {
  final DnsRecordEntity record;

  const LookupSuccess(this.record);

  @override
  List<Object?> get props => [record];
}

class LookupError extends LookupState {
  final String message;

  const LookupError(this.message);

  @override
  List<Object?> get props => [message];
}
