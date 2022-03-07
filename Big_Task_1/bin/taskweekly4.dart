import "dart:io";

void main() {
  diagonalAngka(2);
}

void diagonalAngka(int input) {
  for (var i = 1; i <= input; i++) {
    String bintang = '';
    for (var j = 1; j <= i; j++) {
      if (j == i) {
        bintang += i.toString();
      } else {
        bintang += " ";
      }
    }

    print(bintang);
  }
}
