import 'dart:convert';

const _usernameHeader = 'new';
const _passwordHeader = 'new321!';

final _basicAuth =
    'Basic ' + base64Encode(utf8.encode('$_usernameHeader:$_passwordHeader'));

final Map<String, dynamic> usernameAndPasswordHeader = {
  'Authorization': _basicAuth,
};
