import 'dart:io';
//supaya dapat dimasukkan input 
void main(List<String> args) {
  String masukkanAngka = stdin.readLineSync() ?? '';
  num fixed = num.tryParse(masukkanAngka) ?? 0;
  num faktorial = 1;
  for (num i = fixed; i >= 1; i--) {
    faktorial *= i;
  }
  print(faktorial);
}