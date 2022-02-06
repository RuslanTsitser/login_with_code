import 'model/user.dart';

class UserRepository {
  User? _user;

  User? get user => _user;

  void setUser(User user) => _user = user;

  void deleteUser() => _user = null;
}
