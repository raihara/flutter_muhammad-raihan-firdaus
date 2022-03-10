class Hewan {
  int? berat;
}

class Mobil {
  int overload = 400;
  int kapasitas = 0;
  List<Hewan> muatan = [];
  int? tambahMuatan (Hewan animal) {
    int total = animal.berat!;
    var i = 0;
    while (i < muatan.length){
      total = total + muatan[i].berat!;
      i++;
    }    
    if (total <= overload){
      muatan.add(animal);
      kapasitas = total;
      print('berat kapasitas: $kapasitas kg');
    }else{
      print("Overload");
    }
  }
  int TotalMuatan(){
    return muatan.length;
  }
}

void main(){
  var called = Mobil();
  var sapi = Hewan();
  var kambing = Hewan();
  var unta = Hewan();
  sapi.berat = 50;
  kambing.berat = 20;
  unta.berat = 70;
  called.tambahMuatan(sapi);
  print('Total muatan: ${called.TotalMuatan()}');
  called.tambahMuatan(kambing);
  print('Total muatan: ${called.TotalMuatan()}');
  called.tambahMuatan(unta);
  print('Total muatan: ${called.TotalMuatan()}');
}