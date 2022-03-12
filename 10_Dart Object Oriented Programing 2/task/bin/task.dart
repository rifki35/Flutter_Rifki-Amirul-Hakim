abstract class Matematika {
  int hasil() {
    return 0;
  }
}

class Kpk implements Matematika {
  @override
  int hasil() {
    int result = 0;
    int x = 5;
    int y = 9;
    for (int i = 1; i <= y; i++) {
      result = (result + x);
      if (result % y == 0) {
        return result;
      }
    }
    return result;
  }
}

void main(){
  print(Kpk().hasil());
}