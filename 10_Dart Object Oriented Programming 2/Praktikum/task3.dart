//Soal Task intruksi no.3 pada slide 33 section 10
class Matematika{
  hasil(){
    print('Selamat datang');
  }
}

class KelipatanPersekutuanTerkecil implements Matematika{
  int x = 16;
  int y = 40;
  @override
  hasil() {
    int c,hasil=0;
    if (x<y){
      c=x;
      x=y;
      y=c;
    }
    do{
      hasil =hasil+y;
    } while(hasil%x !=0);
    return 'KPK dari $x dan $y adalah $hasil';
    }
}
class FaktorPersekutuanTerbesar implements Matematika{
  int first = 16;
  int second = 40;
  @override
  hasil() {
  int x = first;
  int y = second;
    int c, sisa;
    if(x < y){
      c = x;
      x = y;
      y = c;
    }
    do{
      sisa = x % y;
      x = y;
      y = sisa;
    } while(sisa !=0);
    return 'FPB dari $first dan $second adalah $x';
  }
}