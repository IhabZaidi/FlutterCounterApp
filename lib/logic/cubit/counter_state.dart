part of 'counter_cubit.dart';

class CounterState {
  int counterValue;
  bool isIncreased;
  CounterState({
    required this.counterValue,
    required this.isIncreased,
  });

  Map<String, dynamic> toMap() {
    return {
      'counterValue': counterValue,
      'isIncreased': isIncreased,
    };
  }

  factory CounterState.fromMap(Map<String, dynamic> map) {
    return CounterState(
      counterValue: map['counterValue'],
      isIncreased: map['isIncreased'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CounterState.fromJson(String source) => CounterState.fromMap(json.decode(source));
}
