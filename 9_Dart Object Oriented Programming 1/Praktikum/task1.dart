class Hewan {
  int? berat;
}

class Mobil {
  int overload = 100;
  int kapasitas = 0;
  List<Hewan> muatan = [];
  void tambahMuatan (Hewan animal) {
    int total = animal.berat!;
    var i = 0;
    while (i < muatan.length){
      total = total + muatan[i].berat!;
      i++;
    }    
    if (total <= overload){
      muatan.add(animal);
      kapasitas = total;
      print(kapasitas);
    }else{
      print("Overload");
    }
  }
}

void main(){
  var sapi = Hewan();
  var kambing = Hewan();
  var unta = Hewan();
  sapi.berat = 50;
  kambing.berat = 20;
  unta.berat = 70;
  var called = Mobil();
  called.tambahMuatan(sapi);
  called.tambahMuatan(kambing);
  called.tambahMuatan(unta);
}