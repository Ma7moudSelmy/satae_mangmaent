abstract class Countersteta {
  final int count;

  Countersteta({required this.count});
}

class CounterInit extends Countersteta {
  CounterInit() : super(count: 10);
}

class CounterUpdate extends Countersteta {
  CounterUpdate({required super.count});
}
