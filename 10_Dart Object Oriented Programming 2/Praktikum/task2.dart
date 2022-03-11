//Soal Task intruksi no.3 dan 4 pada slide 33 section 10
import 'dart:math';
class Matematika{
  var c, sisa;
  hasil(){
    if(x<y){
      c=x;
      x=y;
      y=c;
    }
    do{
      sisa = x%y;
      x=y;
      y=sisa;
    }while(sisa !=0);
    print(x);

  }
}
class KelipatanPersekutuanTerkecil implements Matematika{
  x = 10;
  y = 5;
  @override
  hasil() {
    return hasil();
  }
}

void main(){
  var operation = Matematika();
  print(operation.hasil());
}