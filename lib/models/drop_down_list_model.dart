class DropDownListModel {
  const DropDownListModel({
    this.id,
    this.name,
    this.type,
  });

  final int? id;
  final String? name;
  final int? type;

  factory DropDownListModel.fromJson(Map<String, dynamic> json) {
    return DropDownListModel(
      id: int.tryParse(json['id']),
      name: json['name'],
      type: int.tryParse(json['type']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "type": type,
    };
  }
}
