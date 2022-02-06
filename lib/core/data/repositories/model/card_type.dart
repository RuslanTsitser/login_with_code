class CardType {
  int? id;
  String? name;
  int? from;
  int? to;
  int? percent;

  CardType({this.id, this.name, this.from, this.to, this.percent});

  CardType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    from = json['from'];
    to = json['to'];
    percent = json['percent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['from'] = from;
    data['to'] = to;
    data['percent'] = percent;
    return data;
  }
}
