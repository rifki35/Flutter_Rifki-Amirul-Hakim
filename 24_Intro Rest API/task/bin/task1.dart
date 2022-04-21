import 'package:dio/dio.dart';
import 'dart:convert';

void main ()async{
  Response response;
  var dio = Dio();
  var dataContact = {'id': 4442, 'name': 'Rifki', 'phone': '082278374953' };
  var dataMap = jsonEncode(dataContact);
  response = await dio.post(
    'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/',
    data: dataMap);
    print(response);
}
