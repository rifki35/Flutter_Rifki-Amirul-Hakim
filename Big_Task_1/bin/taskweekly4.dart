import "dart:io";

void main() {
  diagonalAngka(2);
}

void diagonalAngka(int input) {
  for (var i = 1; i <= input; i++) {
    String angka = '';
    for (var j = 1; j <= i; j++) {
      if (j == i) {
        angka += i.toString();
      } else {
        angka += " ";
      }
    }

    print(angka);
  }
}
