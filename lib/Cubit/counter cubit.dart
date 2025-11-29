import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<String> {
  CounterCubit() : super('');

  void increment() {
    emit(("mahmoud"));
  }

  void decrement() {
    emit(("Selmi"));
  }
}
