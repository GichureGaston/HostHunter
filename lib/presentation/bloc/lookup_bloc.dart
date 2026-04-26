import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecases/get_dns_records_usecase.dart';
import 'lookup_event.dart';
import 'lookup_state.dart';

class LookupBloc extends Bloc<LookupEvent, LookupState> {
  final GetDnsRecordsUseCase getDnsRecords;

  LookupBloc({required this.getDnsRecords}) : super(LookupInitial()) {
    on<LookupStarted>(_onLookupStarted);
  }

  Future<void> _onLookupStarted(
    LookupStarted event,
    Emitter<LookupState> emit,
  ) async {
    emit(LookupLoading());
    try {
      final record = await getDnsRecords(
        name: event.domain,
        type: event.type.value,
        resolver: event.resolver,
      );
      emit(LookupSuccess(record));
    } catch (e) {
      emit(LookupError(e.toString()));
    }
  }
}
