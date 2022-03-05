//menentukan nilai ganjil dan genap
var angkaGanjilGenap = (int input){
  if (input % 2 == 0){
    return true;
    //apabila benar
  } else {
    return false;
    //apabila salah
  }
};
void main (){
  print(angkaGanjilGenap(7));
  //untuk memasukkan angka
}