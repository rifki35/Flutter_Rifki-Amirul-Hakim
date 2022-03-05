var asimut = (int masukkan){
  if (masukkan > 180){
    return masukkan -= 180;
  } else if (masukkan < 180){
    return (masukkan += 180);
  } else if (masukkan <= 0){
    return (masukkan = 0);
  } else if (masukkan >= 360){
    return (masukkan = 0);
  } 
};

void main (){
  print (asimut(90));
  print (asimut(200));
  print (asimut(370));
  print(asimut(211));
}