int faktorial (int n){
  if (n==0) return 1;
  return n*faktorial(n-1);
}
void main (){
  print('10! : ${faktorial(10)}');
  print('20! : ${faktorial(20)}');
  print('30! : ${faktorial(30)}');

}