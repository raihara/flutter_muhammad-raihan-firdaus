class Hewan {
  var beratSapi = 50;
  var beratAyam = 10;
}
class Mobil {
  var muatan = Hewan();
  var md = [
    ["Sapi", "100"],
    ["Kambing", "20"],
  ];
  var kapasitas = 5;
  void tambahMuatan(){
    if (kapasitas < 10){
      md.add(["Sapi, 70"]);
    }
    print(muatan);
    print(md);
  }
}
void main(){
  var panggil = Hewan();
  print(panggil.beratSapi);
  print(panggil.beratAyam);
  var called = Mobil();
  called.tambahMuatan();
}