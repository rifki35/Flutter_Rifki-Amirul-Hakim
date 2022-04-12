import 'package:flutter/cupertino.dart';
import 'package:flutter_application_3/person_model.dart';

class ContactState extends ChangeNotifier {
  List<PersonModel> persons = [];
  Void addPerson({required PersonModel personModel}) {
    persons.add(personModel);
    notifyListeners();
  }
}
