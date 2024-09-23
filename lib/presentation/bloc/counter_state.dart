part of 'counter_bloc.dart';

sealed class CounterState extends Equatable {
  const CounterState();
}

final class CounterInitial extends CounterState {
  @override
  List<Object> get props => [];
}

final class CounterIncremented extends CounterState {
  final IncrementModel incrementModel;

  CounterIncremented(this.incrementModel);

  @override
  List<Object> get props => [incrementModel];
}

final class CounterDecremented extends CounterState {
  final IncrementModel incrementModel;

  CounterDecremented(this.incrementModel);

  @override
  List<Object> get props => [incrementModel];
}
