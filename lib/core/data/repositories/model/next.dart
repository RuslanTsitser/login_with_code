import 'card_type.dart';
import 'loyalty.dart';

class Next {
  int? sum;
  int? countOrders;
  int? percent;
  Loyalty? loyalty;
  CardType? type;

  Next({this.sum, this.countOrders, this.percent, this.loyalty, this.type});

  Next.fromJson(Map<String, dynamic> json) {
    sum = json['sum'];
    countOrders = json['countOrders'];
    percent = json['percent'];
    loyalty =
        json['loyalty'] != null ? Loyalty.fromJson(json['loyalty']) : null;
    type = json['type'] != null ? CardType.fromJson(json['type']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sum'] = sum;
    data['countOrders'] = countOrders;
    data['percent'] = percent;
    if (loyalty != null) {
      data['loyalty'] = loyalty!.toJson();
    }
    if (type != null) {
      data['type'] = type!.toJson();
    }
    return data;
  }
}
