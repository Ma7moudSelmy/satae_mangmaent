abstract class CounterState {
  final int count;

  CounterState({required this.count});
}

class CounterInitial extends CounterState {
  CounterInitial() : super(count: 0);
}

class couterupdate extends CounterState {
  couterupdate({required super.count});
}
