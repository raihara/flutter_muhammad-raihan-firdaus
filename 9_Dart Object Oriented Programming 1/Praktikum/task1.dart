class Hewan {
  var beratSapi = 50;
  var beratAyam = 10;
}
class Mobil {
  var muatan = Hewan();
  void tambahMuatan(){
    print(muatan);
    print(muatan.beratSapi);
    print(muatan.beratAyam);
    print(20);
  }
}
void main(){
  var panggil = Hewan();
  print(panggil.beratSapi);
  print(panggil.beratAyam);
  var called = Mobil();
  called.tambahMuatan();
}