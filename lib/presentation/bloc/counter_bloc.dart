import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gotham_test/domain/entities/increment_model.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {

  int _counterValue = 0;
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
      if (event is IncrementCounterEvent) {
        _counterValue += event.incrementModel.counterValue!;
        print('this is the counter value $_counterValue');
        emit(CounterIncremented(IncrementModel(counterValue: _counterValue)));
      } else if (event is DecrementCounterEvent) {
        _counterValue -= event.incrementModel.counterValue!;
        emit(CounterDecremented(IncrementModel(counterValue: _counterValue)));
      }
    });
  }
}
