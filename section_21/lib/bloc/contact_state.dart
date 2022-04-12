part of 'contact_bloc.dart';

import 'package:section_21/models/models.dart';

abstract class ContactState extends Equatable{
  const ContactState();
  @override 
  List<Object> get props => [];
}
class ContactLoading extends COntactState{}

class ContactLoaded extends ContachState {
  final List<Contact> contact;

  const ContactLoaded({this.contact = const <Contact>[]});

  @override 
  List<Object> get props =>[contact];
}