// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'increment_counter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IncrementCounter _$IncrementCounterFromJson(Map<String, dynamic> json) {
  return _IncrementCounter.fromJson(json);
}

/// @nodoc
mixin _$IncrementCounter {
  int? get counterValue => throw _privateConstructorUsedError;

  /// Serializes this IncrementCounter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IncrementCounter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IncrementCounterCopyWith<IncrementCounter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncrementCounterCopyWith<$Res> {
  factory $IncrementCounterCopyWith(
          IncrementCounter value, $Res Function(IncrementCounter) then) =
      _$IncrementCounterCopyWithImpl<$Res, IncrementCounter>;
  @useResult
  $Res call({int? counterValue});
}

/// @nodoc
class _$IncrementCounterCopyWithImpl<$Res, $Val extends IncrementCounter>
    implements $IncrementCounterCopyWith<$Res> {
  _$IncrementCounterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IncrementCounter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counterValue = freezed,
  }) {
    return _then(_value.copyWith(
      counterValue: freezed == counterValue
          ? _value.counterValue
          : counterValue // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IncrementCounterImplCopyWith<$Res>
    implements $IncrementCounterCopyWith<$Res> {
  factory _$$IncrementCounterImplCopyWith(_$IncrementCounterImpl value,
          $Res Function(_$IncrementCounterImpl) then) =
      __$$IncrementCounterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? counterValue});
}

/// @nodoc
class __$$IncrementCounterImplCopyWithImpl<$Res>
    extends _$IncrementCounterCopyWithImpl<$Res, _$IncrementCounterImpl>
    implements _$$IncrementCounterImplCopyWith<$Res> {
  __$$IncrementCounterImplCopyWithImpl(_$IncrementCounterImpl _value,
      $Res Function(_$IncrementCounterImpl) _then)
      : super(_value, _then);

  /// Create a copy of IncrementCounter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counterValue = freezed,
  }) {
    return _then(_$IncrementCounterImpl(
      counterValue: freezed == counterValue
          ? _value.counterValue
          : counterValue // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IncrementCounterImpl implements _IncrementCounter {
  const _$IncrementCounterImpl({this.counterValue});

  factory _$IncrementCounterImpl.fromJson(Map<String, dynamic> json) =>
      _$$IncrementCounterImplFromJson(json);

  @override
  final int? counterValue;

  @override
  String toString() {
    return 'IncrementCounter(counterValue: $counterValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncrementCounterImpl &&
            (identical(other.counterValue, counterValue) ||
                other.counterValue == counterValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, counterValue);

  /// Create a copy of IncrementCounter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncrementCounterImplCopyWith<_$IncrementCounterImpl> get copyWith =>
      __$$IncrementCounterImplCopyWithImpl<_$IncrementCounterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IncrementCounterImplToJson(
      this,
    );
  }

  @override
  set counterValue(int? _counterValue) {
    // TODO: implement counterValue
  }
}

abstract class _IncrementCounter implements IncrementCounter {
  const factory _IncrementCounter({final int? counterValue}) =
      _$IncrementCounterImpl;

  factory _IncrementCounter.fromJson(Map<String, dynamic> json) =
      _$IncrementCounterImpl.fromJson;

  @override
  int? get counterValue;

  /// Create a copy of IncrementCounter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncrementCounterImplCopyWith<_$IncrementCounterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
