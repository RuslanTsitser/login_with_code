part of 'update_user_cubit.dart';

@freezed
class UpdateUserState with _$UpdateUserState {
  const factory UpdateUserState.updatedUser({
    String? name,
    String? email,
    String? phone,
  }) = UpdatedUser;
  const factory UpdateUserState.failure(AuthFailure failure) = Failure;
  const factory UpdateUserState.loading() = Loading;
}
