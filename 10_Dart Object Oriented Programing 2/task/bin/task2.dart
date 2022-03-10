abstract class BangunRuang {
  int panjang = 10;
  int lebar = 4;
  int tinggi = 3;

  int volume() {
    return 0;
  }
}

class Kubus extends BangunRuang {
  int sisi = 9;
  @override
  int volume() {
    return sisi * 3;
  }
}

class Balok extends BangunRuang {
  @override
  int volume() {
    return panjang * lebar * tinggi;
  }
}
void main(){
  print(Kubus().volume());
  print(Balok().volume());
}