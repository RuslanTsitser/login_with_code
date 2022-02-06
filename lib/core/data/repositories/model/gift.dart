class Gift {
  int? id;
  String? name;
  String? image;
  String? note;

  Gift({this.id, this.name, this.image, this.note});

  Gift.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    note = json['note'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['note'] = note;
    return data;
  }
}
