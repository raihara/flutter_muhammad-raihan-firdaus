//Soal Task intruksi no.1 pada slide 32 section 10
import 'dart:math';
class BangunRuang{
  int panjang = 10;
  int lebar = 5;
  int tinggi = 3;
  volume(){
    print('Panjang suatu bangunRuang adalah $panjang, lebarnya $lebar, dan tingginya $tinggi');
  }
}
class Kubus extends BangunRuang{
  var sisi = 10;
  @override
  volume() {
    print('Sisi kubus adalah $sisi');
    return sisi * sisi * sisi;
  }
}

class Balok extends BangunRuang{
  @override
  volume() {
    return panjang * lebar * tinggi;
  }
}