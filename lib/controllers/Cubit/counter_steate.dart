import 'package:equatable/equatable.dart';

abstract class CounterState extends Equatable {
  final int count;

  const CounterState({required this.count});

  @override
  // TODO: implement props
  List<Object?> get props => [count];
}

class CounterInitial extends CounterState {
  CounterInitial() : super(count: 0);
}

class couterupdate extends CounterState {
  couterupdate({required super.count});
}
