part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.initial() = Initial;
  const factory AuthState.authenticated() = Authenticated;
  const factory AuthState.unauthenticated({String? email}) = Unauthenticated;
  const factory AuthState.failure(AuthFailure failure) = Failure;
}
