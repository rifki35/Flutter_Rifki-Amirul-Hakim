void main(List<String> arguments) {
Mobil mobil = Mobil();
for (var i = 0; i < 14; i++) {
  mobil.tambahMuatan();
} print(mobil.muatan.length);
}
class Hewan{
  String name = '';
  int beratBadanHewan = 100;

}
class Mobil{
  List<Hewan> muatan = [];
void tambahMuatan(){
  int totalBeratBadan = 0;
  int kapasitas = 1000;
  for (var i = 0; i < muatan.length; i++) {
    totalBeratBadan += muatan[i].beratBadanHewan;
  } if(kapasitas > totalBeratBadan){
    muatan.add(Hewan());
  }
}
}