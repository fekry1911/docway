// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UserStates<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
    required TResult Function(String message) errorLogOut,
    required TResult Function() successLogOut,
    required TResult Function() loadingLogOut,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? errorLogOut,
    TResult? Function()? successLogOut,
    TResult? Function()? loadingLogOut,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? errorLogOut,
    TResult Function()? successLogOut,
    TResult Function()? loadingLogOut,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(Error2<T> value) errorLogOut,
    required TResult Function(Success1<T> value) successLogOut,
    required TResult Function(Loading1<T> value) loadingLogOut,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(Error2<T> value)? errorLogOut,
    TResult? Function(Success1<T> value)? successLogOut,
    TResult? Function(Loading1<T> value)? loadingLogOut,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(Error2<T> value)? errorLogOut,
    TResult Function(Success1<T> value)? successLogOut,
    TResult Function(Loading1<T> value)? loadingLogOut,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatesCopyWith<T, $Res> {
  factory $UserStatesCopyWith(
    UserStates<T> value,
    $Res Function(UserStates<T>) then,
  ) = _$UserStatesCopyWithImpl<T, $Res, UserStates<T>>;
}

/// @nodoc
class _$UserStatesCopyWithImpl<T, $Res, $Val extends UserStates<T>>
    implements $UserStatesCopyWith<T, $Res> {
  _$UserStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl<T> value,
    $Res Function(_$InitialImpl<T>) then,
  ) = __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$UserStatesCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl<T> _value,
    $Res Function(_$InitialImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of UserStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'UserStates<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
    required TResult Function(String message) errorLogOut,
    required TResult Function() successLogOut,
    required TResult Function() loadingLogOut,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? errorLogOut,
    TResult? Function()? successLogOut,
    TResult? Function()? loadingLogOut,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? errorLogOut,
    TResult Function()? successLogOut,
    TResult Function()? loadingLogOut,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(Error2<T> value) errorLogOut,
    required TResult Function(Success1<T> value) successLogOut,
    required TResult Function(Loading1<T> value) loadingLogOut,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(Error2<T> value)? errorLogOut,
    TResult? Function(Success1<T> value)? successLogOut,
    TResult? Function(Loading1<T> value)? loadingLogOut,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(Error2<T> value)? errorLogOut,
    TResult Function(Success1<T> value)? successLogOut,
    TResult Function(Loading1<T> value)? loadingLogOut,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial<T> implements UserStates<T> {
  const factory Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T, $Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl<T> value,
    $Res Function(_$LoadingImpl<T>) then,
  ) = __$$LoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T, $Res>
    extends _$UserStatesCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl<T> _value,
    $Res Function(_$LoadingImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of UserStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl<T> implements Loading<T> {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'UserStates<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
    required TResult Function(String message) errorLogOut,
    required TResult Function() successLogOut,
    required TResult Function() loadingLogOut,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? errorLogOut,
    TResult? Function()? successLogOut,
    TResult? Function()? loadingLogOut,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? errorLogOut,
    TResult Function()? successLogOut,
    TResult Function()? loadingLogOut,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(Error2<T> value) errorLogOut,
    required TResult Function(Success1<T> value) successLogOut,
    required TResult Function(Loading1<T> value) loadingLogOut,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(Error2<T> value)? errorLogOut,
    TResult? Function(Success1<T> value)? successLogOut,
    TResult? Function(Loading1<T> value)? loadingLogOut,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(Error2<T> value)? errorLogOut,
    TResult Function(Success1<T> value)? successLogOut,
    TResult Function(Loading1<T> value)? loadingLogOut,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements UserStates<T> {
  const factory Loading() = _$LoadingImpl<T>;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<T, $Res> {
  factory _$$SuccessImplCopyWith(
    _$SuccessImpl<T> value,
    $Res Function(_$SuccessImpl<T>) then,
  ) = __$$SuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<T, $Res>
    extends _$UserStatesCopyWithImpl<T, $Res, _$SuccessImpl<T>>
    implements _$$SuccessImplCopyWith<T, $Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl<T> _value,
    $Res Function(_$SuccessImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of UserStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = freezed}) {
    return _then(
      _$SuccessImpl<T>(
        freezed == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                as T,
      ),
    );
  }
}

/// @nodoc

class _$SuccessImpl<T> implements Success<T> {
  const _$SuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'UserStates<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of UserStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      __$$SuccessImplCopyWithImpl<T, _$SuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
    required TResult Function(String message) errorLogOut,
    required TResult Function() successLogOut,
    required TResult Function() loadingLogOut,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? errorLogOut,
    TResult? Function()? successLogOut,
    TResult? Function()? loadingLogOut,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? errorLogOut,
    TResult Function()? successLogOut,
    TResult Function()? loadingLogOut,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(Error2<T> value) errorLogOut,
    required TResult Function(Success1<T> value) successLogOut,
    required TResult Function(Loading1<T> value) loadingLogOut,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(Error2<T> value)? errorLogOut,
    TResult? Function(Success1<T> value)? successLogOut,
    TResult? Function(Loading1<T> value)? loadingLogOut,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(Error2<T> value)? errorLogOut,
    TResult Function(Success1<T> value)? successLogOut,
    TResult Function(Loading1<T> value)? loadingLogOut,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T> implements UserStates<T> {
  const factory Success(final T data) = _$SuccessImpl<T>;

  T get data;

  /// Create a copy of UserStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<T, $Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl<T> value,
    $Res Function(_$ErrorImpl<T>) then,
  ) = __$$ErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<T, $Res>
    extends _$UserStatesCopyWithImpl<T, $Res, _$ErrorImpl<T>>
    implements _$$ErrorImplCopyWith<T, $Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl<T> _value,
    $Res Function(_$ErrorImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of UserStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorImpl<T>(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl<T> implements Error<T> {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UserStates<$T>.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of UserStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      __$$ErrorImplCopyWithImpl<T, _$ErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
    required TResult Function(String message) errorLogOut,
    required TResult Function() successLogOut,
    required TResult Function() loadingLogOut,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? errorLogOut,
    TResult? Function()? successLogOut,
    TResult? Function()? loadingLogOut,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? errorLogOut,
    TResult Function()? successLogOut,
    TResult Function()? loadingLogOut,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(Error2<T> value) errorLogOut,
    required TResult Function(Success1<T> value) successLogOut,
    required TResult Function(Loading1<T> value) loadingLogOut,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(Error2<T> value)? errorLogOut,
    TResult? Function(Success1<T> value)? successLogOut,
    TResult? Function(Loading1<T> value)? loadingLogOut,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(Error2<T> value)? errorLogOut,
    TResult Function(Success1<T> value)? successLogOut,
    TResult Function(Loading1<T> value)? loadingLogOut,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<T> implements UserStates<T> {
  const factory Error(final String message) = _$ErrorImpl<T>;

  String get message;

  /// Create a copy of UserStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Error2ImplCopyWith<T, $Res> {
  factory _$$Error2ImplCopyWith(
    _$Error2Impl<T> value,
    $Res Function(_$Error2Impl<T>) then,
  ) = __$$Error2ImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$Error2ImplCopyWithImpl<T, $Res>
    extends _$UserStatesCopyWithImpl<T, $Res, _$Error2Impl<T>>
    implements _$$Error2ImplCopyWith<T, $Res> {
  __$$Error2ImplCopyWithImpl(
    _$Error2Impl<T> _value,
    $Res Function(_$Error2Impl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of UserStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$Error2Impl<T>(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$Error2Impl<T> implements Error2<T> {
  const _$Error2Impl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'UserStates<$T>.errorLogOut(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error2Impl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of UserStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Error2ImplCopyWith<T, _$Error2Impl<T>> get copyWith =>
      __$$Error2ImplCopyWithImpl<T, _$Error2Impl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
    required TResult Function(String message) errorLogOut,
    required TResult Function() successLogOut,
    required TResult Function() loadingLogOut,
  }) {
    return errorLogOut(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? errorLogOut,
    TResult? Function()? successLogOut,
    TResult? Function()? loadingLogOut,
  }) {
    return errorLogOut?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? errorLogOut,
    TResult Function()? successLogOut,
    TResult Function()? loadingLogOut,
    required TResult orElse(),
  }) {
    if (errorLogOut != null) {
      return errorLogOut(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(Error2<T> value) errorLogOut,
    required TResult Function(Success1<T> value) successLogOut,
    required TResult Function(Loading1<T> value) loadingLogOut,
  }) {
    return errorLogOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(Error2<T> value)? errorLogOut,
    TResult? Function(Success1<T> value)? successLogOut,
    TResult? Function(Loading1<T> value)? loadingLogOut,
  }) {
    return errorLogOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(Error2<T> value)? errorLogOut,
    TResult Function(Success1<T> value)? successLogOut,
    TResult Function(Loading1<T> value)? loadingLogOut,
    required TResult orElse(),
  }) {
    if (errorLogOut != null) {
      return errorLogOut(this);
    }
    return orElse();
  }
}

abstract class Error2<T> implements UserStates<T> {
  const factory Error2({required final String message}) = _$Error2Impl<T>;

  String get message;

  /// Create a copy of UserStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Error2ImplCopyWith<T, _$Error2Impl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Success1ImplCopyWith<T, $Res> {
  factory _$$Success1ImplCopyWith(
    _$Success1Impl<T> value,
    $Res Function(_$Success1Impl<T>) then,
  ) = __$$Success1ImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$Success1ImplCopyWithImpl<T, $Res>
    extends _$UserStatesCopyWithImpl<T, $Res, _$Success1Impl<T>>
    implements _$$Success1ImplCopyWith<T, $Res> {
  __$$Success1ImplCopyWithImpl(
    _$Success1Impl<T> _value,
    $Res Function(_$Success1Impl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of UserStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$Success1Impl<T> implements Success1<T> {
  const _$Success1Impl();

  @override
  String toString() {
    return 'UserStates<$T>.successLogOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Success1Impl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
    required TResult Function(String message) errorLogOut,
    required TResult Function() successLogOut,
    required TResult Function() loadingLogOut,
  }) {
    return successLogOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? errorLogOut,
    TResult? Function()? successLogOut,
    TResult? Function()? loadingLogOut,
  }) {
    return successLogOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? errorLogOut,
    TResult Function()? successLogOut,
    TResult Function()? loadingLogOut,
    required TResult orElse(),
  }) {
    if (successLogOut != null) {
      return successLogOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(Error2<T> value) errorLogOut,
    required TResult Function(Success1<T> value) successLogOut,
    required TResult Function(Loading1<T> value) loadingLogOut,
  }) {
    return successLogOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(Error2<T> value)? errorLogOut,
    TResult? Function(Success1<T> value)? successLogOut,
    TResult? Function(Loading1<T> value)? loadingLogOut,
  }) {
    return successLogOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(Error2<T> value)? errorLogOut,
    TResult Function(Success1<T> value)? successLogOut,
    TResult Function(Loading1<T> value)? loadingLogOut,
    required TResult orElse(),
  }) {
    if (successLogOut != null) {
      return successLogOut(this);
    }
    return orElse();
  }
}

abstract class Success1<T> implements UserStates<T> {
  const factory Success1() = _$Success1Impl<T>;
}

/// @nodoc
abstract class _$$Loading1ImplCopyWith<T, $Res> {
  factory _$$Loading1ImplCopyWith(
    _$Loading1Impl<T> value,
    $Res Function(_$Loading1Impl<T>) then,
  ) = __$$Loading1ImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$Loading1ImplCopyWithImpl<T, $Res>
    extends _$UserStatesCopyWithImpl<T, $Res, _$Loading1Impl<T>>
    implements _$$Loading1ImplCopyWith<T, $Res> {
  __$$Loading1ImplCopyWithImpl(
    _$Loading1Impl<T> _value,
    $Res Function(_$Loading1Impl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of UserStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$Loading1Impl<T> implements Loading1<T> {
  const _$Loading1Impl();

  @override
  String toString() {
    return 'UserStates<$T>.loadingLogOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading1Impl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
    required TResult Function(String message) errorLogOut,
    required TResult Function() successLogOut,
    required TResult Function() loadingLogOut,
  }) {
    return loadingLogOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? errorLogOut,
    TResult? Function()? successLogOut,
    TResult? Function()? loadingLogOut,
  }) {
    return loadingLogOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? errorLogOut,
    TResult Function()? successLogOut,
    TResult Function()? loadingLogOut,
    required TResult orElse(),
  }) {
    if (loadingLogOut != null) {
      return loadingLogOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(Error2<T> value) errorLogOut,
    required TResult Function(Success1<T> value) successLogOut,
    required TResult Function(Loading1<T> value) loadingLogOut,
  }) {
    return loadingLogOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(Error2<T> value)? errorLogOut,
    TResult? Function(Success1<T> value)? successLogOut,
    TResult? Function(Loading1<T> value)? loadingLogOut,
  }) {
    return loadingLogOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(Error2<T> value)? errorLogOut,
    TResult Function(Success1<T> value)? successLogOut,
    TResult Function(Loading1<T> value)? loadingLogOut,
    required TResult orElse(),
  }) {
    if (loadingLogOut != null) {
      return loadingLogOut(this);
    }
    return orElse();
  }
}

abstract class Loading1<T> implements UserStates<T> {
  const factory Loading1() = _$Loading1Impl<T>;
}
