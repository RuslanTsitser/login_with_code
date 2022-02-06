import 'card.dart';
import 'gift.dart';

class User {
  int? id;
  String? firstName;
  String? lastName;
  String? patronymic;
  String? name;
  String? email;
  String? phone;
  String? birthday;
  String? cityId;
  String? gender;
  int? verify;
  String? token;
  bool? isNewRecord;
  List<Gift>? gifts;
  Card? card;

  User({
    this.id,
    this.firstName,
    this.lastName,
    this.patronymic,
    this.name,
    this.email,
    this.phone,
    this.birthday,
    this.cityId,
    this.gender,
    this.verify,
    this.token,
    this.isNewRecord,
    this.gifts,
    this.card,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    patronymic = json['patronymic'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    birthday = json['birthday'];
    cityId = json['cityId'];
    gender = json['gender'];
    verify = json['verify'];
    token = json['token'];
    isNewRecord = json['isNewRecord'];
    if (json['gifts'] != null) {
      gifts = <Gift>[];
      json['gifts'].forEach((v) {
        gifts!.add(Gift.fromJson(v));
      });
    }
    card = json['card'] != null ? Card.fromJson(json['card']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['patronymic'] = patronymic;
    data['name'] = name;
    data['email'] = email;
    data['phone'] = phone;
    data['birthday'] = birthday;
    data['cityId'] = cityId;
    data['gender'] = gender;
    data['verify'] = verify;
    data['token'] = token;
    data['isNewRecord'] = isNewRecord;
    if (gifts != null) {
      data['gifts'] = gifts!.map((v) => v.toJson()).toList();
    }
    if (card != null) {
      data['card'] = card!.toJson();
    }
    return data;
  }
}
