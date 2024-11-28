class ElecModel {
  String? id;
  int? number;
  

  ElecModel({this.id, this.number});

  ElecModel.fromJson(Map map) {
    id = map['id'].toString();
    number = map['number'];
  
  }
}