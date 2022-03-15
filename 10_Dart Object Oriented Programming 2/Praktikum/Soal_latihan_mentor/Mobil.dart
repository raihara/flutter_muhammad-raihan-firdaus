class Mobil{
  var merkMobil;
  var tipeMobil;
  var bahanBakar;
  var jarakTempuh;
  Mobil(){
    merkMobil = 'Honda';
    tipeMobil = 'Brio';
    bahanBakar = 10;
    jarakTempuh = 0;
  }
  jalan(int km){
    if(bahanBakar > 0){
      jarakTempuh += km;
      bahanBakar -= km*0.1;
    }
  }
  isiBahanBakar(int n){
    return bahanBakar + n;
  }
  infoBahanBakar(){
    return bahanBakar;
  }
  infoJarakTempuh(){
    return jarakTempuh;
  }
}

void main(){
  var test = Mobil();
  test.jalan(70);
  print('Total Jarak yang di tempuh ${test.infoJarakTempuh()}');
  print('Total bahan bakar = ${test.infoBahanBakar()}');
  print('Isi bahan bakar mobil 2 liter, jadi total bahan bakar = ${test.isiBahanBakar(2)}');
}