import 'package:dio/dio.dart';
import 'package:latihan/model/contact_model.dart';

class ContactAPI{
  static Future<List<Contact>>getContact()async{
    final response = await Dio().get('https://www.google.com/url?q=https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/2&sa=D&source=editors&ust=1650532587098718&usg=AOvVaw3ngpO86b9F_nFHqkeOi2dI');
    List<Contact>contacts = (response.data as List).map((e) => Contact(id: e['id'], name: e['name'], phone: e['phone'],),).toList();
    return contacts; 
  }
}