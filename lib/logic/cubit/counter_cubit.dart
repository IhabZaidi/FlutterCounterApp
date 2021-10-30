import 'dart:convert';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends HydratedCubit<CounterState> {
  CounterCubit() : super(CounterState(counterValue: 0, isIncreased: false));
  void emitIncrease() =>
      emit(CounterState(counterValue: state.counterValue + 1, isIncreased: true));
  void emitDecrease() =>
      emit(CounterState(counterValue: state.counterValue - 1, isIncreased: false));

  @override
  CounterState? fromJson(Map<String, dynamic> json) {
   return CounterState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(CounterState state) {
    return state.toMap();
  }
}
