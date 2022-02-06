// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UpdateUserStateTearOff {
  const _$UpdateUserStateTearOff();

  UpdatedUser updatedUser({String? name, String? email, String? phone}) {
    return UpdatedUser(
      name: name,
      email: email,
      phone: phone,
    );
  }

  Failure failure(AuthFailure failure) {
    return Failure(
      failure,
    );
  }

  Loading loading() {
    return const Loading();
  }
}

/// @nodoc
const $UpdateUserState = _$UpdateUserStateTearOff();

/// @nodoc
mixin _$UpdateUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? email, String? phone)
        updatedUser,
    required TResult Function(AuthFailure failure) failure,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name, String? email, String? phone)? updatedUser,
    TResult Function(AuthFailure failure)? failure,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? email, String? phone)? updatedUser,
    TResult Function(AuthFailure failure)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdatedUser value) updatedUser,
    required TResult Function(Failure value) failure,
    required TResult Function(Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdatedUser value)? updatedUser,
    TResult Function(Failure value)? failure,
    TResult Function(Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdatedUser value)? updatedUser,
    TResult Function(Failure value)? failure,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserStateCopyWith<$Res> {
  factory $UpdateUserStateCopyWith(
          UpdateUserState value, $Res Function(UpdateUserState) then) =
      _$UpdateUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateUserStateCopyWithImpl<$Res>
    implements $UpdateUserStateCopyWith<$Res> {
  _$UpdateUserStateCopyWithImpl(this._value, this._then);

  final UpdateUserState _value;
  // ignore: unused_field
  final $Res Function(UpdateUserState) _then;
}

/// @nodoc
abstract class $UpdatedUserCopyWith<$Res> {
  factory $UpdatedUserCopyWith(
          UpdatedUser value, $Res Function(UpdatedUser) then) =
      _$UpdatedUserCopyWithImpl<$Res>;
  $Res call({String? name, String? email, String? phone});
}

/// @nodoc
class _$UpdatedUserCopyWithImpl<$Res>
    extends _$UpdateUserStateCopyWithImpl<$Res>
    implements $UpdatedUserCopyWith<$Res> {
  _$UpdatedUserCopyWithImpl(
      UpdatedUser _value, $Res Function(UpdatedUser) _then)
      : super(_value, (v) => _then(v as UpdatedUser));

  @override
  UpdatedUser get _value => super._value as UpdatedUser;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(UpdatedUser(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdatedUser implements UpdatedUser {
  const _$UpdatedUser({this.name, this.email, this.phone});

  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? phone;

  @override
  String toString() {
    return 'UpdateUserState.updatedUser(name: $name, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdatedUser &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  $UpdatedUserCopyWith<UpdatedUser> get copyWith =>
      _$UpdatedUserCopyWithImpl<UpdatedUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? email, String? phone)
        updatedUser,
    required TResult Function(AuthFailure failure) failure,
    required TResult Function() loading,
  }) {
    return updatedUser(name, email, phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name, String? email, String? phone)? updatedUser,
    TResult Function(AuthFailure failure)? failure,
    TResult Function()? loading,
  }) {
    return updatedUser?.call(name, email, phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? email, String? phone)? updatedUser,
    TResult Function(AuthFailure failure)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (updatedUser != null) {
      return updatedUser(name, email, phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdatedUser value) updatedUser,
    required TResult Function(Failure value) failure,
    required TResult Function(Loading value) loading,
  }) {
    return updatedUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdatedUser value)? updatedUser,
    TResult Function(Failure value)? failure,
    TResult Function(Loading value)? loading,
  }) {
    return updatedUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdatedUser value)? updatedUser,
    TResult Function(Failure value)? failure,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (updatedUser != null) {
      return updatedUser(this);
    }
    return orElse();
  }
}

abstract class UpdatedUser implements UpdateUserState {
  const factory UpdatedUser({String? name, String? email, String? phone}) =
      _$UpdatedUser;

  String? get name;
  String? get email;
  String? get phone;
  @JsonKey(ignore: true)
  $UpdatedUserCopyWith<UpdatedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({AuthFailure failure});

  $AuthFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> extends _$UpdateUserStateCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(Failure _value, $Res Function(Failure) _then)
      : super(_value, (v) => _then(v as Failure));

  @override
  Failure get _value => super._value as Failure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(Failure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthFailure,
    ));
  }

  @override
  $AuthFailureCopyWith<$Res> get failure {
    return $AuthFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$Failure implements Failure {
  const _$Failure(this.failure);

  @override
  final AuthFailure failure;

  @override
  String toString() {
    return 'UpdateUserState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Failure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  $FailureCopyWith<Failure> get copyWith =>
      _$FailureCopyWithImpl<Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? email, String? phone)
        updatedUser,
    required TResult Function(AuthFailure failure) failure,
    required TResult Function() loading,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name, String? email, String? phone)? updatedUser,
    TResult Function(AuthFailure failure)? failure,
    TResult Function()? loading,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? email, String? phone)? updatedUser,
    TResult Function(AuthFailure failure)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdatedUser value) updatedUser,
    required TResult Function(Failure value) failure,
    required TResult Function(Loading value) loading,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdatedUser value)? updatedUser,
    TResult Function(Failure value)? failure,
    TResult Function(Loading value)? loading,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdatedUser value)? updatedUser,
    TResult Function(Failure value)? failure,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements UpdateUserState {
  const factory Failure(AuthFailure failure) = _$Failure;

  AuthFailure get failure;
  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$UpdateUserStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'UpdateUserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? email, String? phone)
        updatedUser,
    required TResult Function(AuthFailure failure) failure,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name, String? email, String? phone)? updatedUser,
    TResult Function(AuthFailure failure)? failure,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? email, String? phone)? updatedUser,
    TResult Function(AuthFailure failure)? failure,
    TResult Function()? loading,
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
    required TResult Function(UpdatedUser value) updatedUser,
    required TResult Function(Failure value) failure,
    required TResult Function(Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdatedUser value)? updatedUser,
    TResult Function(Failure value)? failure,
    TResult Function(Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdatedUser value)? updatedUser,
    TResult Function(Failure value)? failure,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements UpdateUserState {
  const factory Loading() = _$Loading;
}
