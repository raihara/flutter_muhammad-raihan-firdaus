class Pistol{
  var nama;
  var jumlahPeluru;
  Pistol() {
    nama = 'Shotgun';
    jumlahPeluru = 8;
  }
  tembak(){
    if(jumlahPeluru > 0){
        return jumlahPeluru - 1;
      }
  }
  reload(int n){
    tembak();
    if (n <= jumlahPeluru){
      return jumlahPeluru + n;      
    }
  }
}
void main(){
  var duar = Pistol();
  print(duar.tembak());
  print(duar.reload(1));
}