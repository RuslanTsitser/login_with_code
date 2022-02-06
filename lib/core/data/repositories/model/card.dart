import 'card_type.dart';
import 'next.dart';

class Card {
  int? id;
  String? number;
  int? percent;
  int? balance;
  int? countOrders;
  int? sum;
  CardType? type;
  String? loyaltyType;
  Next? next;

  Card(
      {this.id,
      this.number,
      this.percent,
      this.balance,
      this.countOrders,
      this.sum,
      this.type,
      this.loyaltyType,
      this.next});

  Card.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    number = json['number'];
    percent = json['percent'];
    balance = json['balance'];
    countOrders = json['countOrders'];
    sum = json['sum'];
    type = json['type'] != null ? CardType.fromJson(json['type']) : null;
    loyaltyType = json['loyaltyType'];
    next = json['next'] != null ? Next.fromJson(json['next']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['number'] = number;
    data['percent'] = percent;
    data['balance'] = balance;
    data['countOrders'] = countOrders;
    data['sum'] = sum;
    if (type != null) {
      data['type'] = type!.toJson();
    }
    data['loyaltyType'] = loyaltyType;
    if (next != null) {
      data['next'] = next!.toJson();
    }
    return data;
  }
}
