// void p1()[
//   Future.delayed(duration(seconds: 1).(){
//     print('hello dari p1');
//   }
//   void p2(){
//     print('hello dari p2');
//   }
//   void main(){
//     p1();
//     p2();
//   }

Future<void> p1()async{
await Future.delayed(duration(seconds:1), () {
  print('hello dari p1');
}); //future.delayed
}

void p2() {
  print('hello dari p2');
}

void main() async {
  await p1();
  p2();
}