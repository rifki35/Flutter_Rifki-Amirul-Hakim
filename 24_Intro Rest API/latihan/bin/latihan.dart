import 'package:dio/dio.dart';

void main(){
Dio()
      .get("https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/")
      .then((Response){
    print(Response);
});
}