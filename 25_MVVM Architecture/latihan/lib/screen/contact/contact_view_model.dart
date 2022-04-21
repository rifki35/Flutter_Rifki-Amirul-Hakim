import 'package:flutter/cupertino.dart';
import 'package:latihan/model/api/contact_api.dart';
import 'package:latihan/model/contact_model.dart';

class ContactViewModel with ChangeNotifier{
  List<Contact>_contacts = [];
  List<Contact>get Contacts => _contacts;

  get contacts => null;
  getAllContact() async{
    final c = await ContactAPI.getContact();
    _contacts = c;
    notifyListeners();
  }
}