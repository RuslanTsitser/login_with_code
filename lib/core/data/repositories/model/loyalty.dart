class Loyalty {
  int? id;
  int? from;
  int? to;
  int? countFrom;
  int? countTo;
  int? cardTypeId;

  Loyalty(
      {this.id,
      this.from,
      this.to,
      this.countFrom,
      this.countTo,
      this.cardTypeId});

  Loyalty.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    from = json['from'];
    to = json['to'];
    countFrom = json['countFrom'];
    countTo = json['countTo'];
    cardTypeId = json['cardTypeId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['from'] = from;
    data['to'] = to;
    data['countFrom'] = countFrom;
    data['countTo'] = countTo;
    data['cardTypeId'] = cardTypeId;
    return data;
  }
}
