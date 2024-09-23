import 'package:gotham_test/domain/entities/increment_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'increment_counter.freezed.dart';
part 'increment_counter.g.dart';
@freezed
class IncrementCounter extends IncrementModel with _$IncrementCounter {
  const factory IncrementCounter({int? counterValue}) = _IncrementCounter;
  factory IncrementCounter.fromJson(Map<String, dynamic> json) => _$IncrementCounterFromJson(json);
}