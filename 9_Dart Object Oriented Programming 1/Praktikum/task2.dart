import 'task1.dart';
class mobil{
  totalMuatan(){
    var call = Hewan();
    var nilai = Mobil();
    var total = call.beratAyam + nilai.kapasitas;
    print(total);
  }
}

void main(){
  var call = mobil();
  call.totalMuatan();
}