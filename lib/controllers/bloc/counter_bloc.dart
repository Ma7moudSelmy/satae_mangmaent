import 'package:bloc/bloc.dart';
import 'package:satae_mangmaent/controllers/bloc/counter_state.dart';

part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
      emit(couterupdate(count: state.count + 1));
    });
    on<DecrementCounter>((event, emit) {
      emit(couterupdate(count: state.count - 1));
    });
  }
}
