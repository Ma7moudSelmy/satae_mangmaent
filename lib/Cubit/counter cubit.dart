import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:satae_mangmaent/cubit/counter%20steta.dart';

class Countercubit extends Cubit<Countersteta> {
  Countercubit() : super(CounterInit());

  void increment() {
    emit(CounterUpdate(count: state.count + 1));
  }

  void decrement() {
    emit(CounterUpdate(count: state.count - 1));
  }
}
