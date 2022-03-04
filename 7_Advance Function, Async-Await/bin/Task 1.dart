import 'dart:io';

Future<List<int>> Latihan(List<int>Listdata, int pengali) async {
  await Future.delayed(
    Duration(seconds: 2),
    (){
      for (var i = 0; i < Listdata.length; i++) {
        Listdata[i] *= pengali;
      }
    },
  );
    return await Listdata;
}

void main(List<String> arguments) async{
  var pengali = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
  var result = await Latihan([20, 8, 1, 4, 5], pengali);
  for (var item in result){
    print(item);
  }
}