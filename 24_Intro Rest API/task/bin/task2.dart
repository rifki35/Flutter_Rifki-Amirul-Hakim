import 'dart:web_gl';

class Autogenerated{
  int? id;
  String? name;
  String?phone;

  Autogenerated.fromJson(Map<String, dynamic>json){
    id = json['id'];
    id = json['name'];
    id = json['phone'];
  }
  Map<String,dynamic>toJson(){
    final Map<String,dynamic>data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['phone'] = this.phone;
    return data;
  }
}