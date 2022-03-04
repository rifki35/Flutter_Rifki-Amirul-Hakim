void main(List<String> arguments) async {
  List<List<String>> namaMahasiswa = [
    ['rifki', 'anton'],
    [
      '1815041027',
      '1815041029',
    ]
  ];
  var mahasiswaMap = {};
  for (var item in namaMahasiswa) {
    mahasiswaMap[item.first] = item.last;
  }
  print(mahasiswaMap);
}
