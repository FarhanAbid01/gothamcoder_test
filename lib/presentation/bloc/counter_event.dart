part of 'counter_bloc.dart';

sealed class CounterEvent extends Equatable {
  const CounterEvent();
}


class IncrementCounterEvent extends CounterEvent {
  final IncrementModel incrementModel;

  const IncrementCounterEvent(this.incrementModel);

  @override
  List<Object> get props => [incrementModel];
}

class DecrementCounterEvent extends CounterEvent {
  final IncrementModel incrementModel;

  const DecrementCounterEvent(this.incrementModel);

  @override
  List<Object> get props => [incrementModel];
}
