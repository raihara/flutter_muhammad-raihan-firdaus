class Hewan{
  var nama;
  var jenis;
  Hewan(){
    nama = 'Sebutkan nama hewan';
    jenis = 'Sebutkan jenis hewan';
  }
  void suara(){
    print('Tidak diketahui');
  }
}
class Kucing extends Hewan{
  Kucing(){
    nama = 'Slovi';
    jenis = 'Persia';
  }
  @override
  void suara() {
    print('Meow');
  }
  void lari(){
    print('Berlari menggunakan 4 kaki');
  }
}
class Unggas extends Hewan{
  var keluarga;
  Unggas(){
    var call = Hewan();
    print(call.nama);
    call.jenis = 'Unggas';
    print(call.jenis);
    keluarga = 'Burung bisa terbang';
  }
  @override
  void suara() {
    print('Tidak diketahui');
  }
}
class Burung extends Unggas{
  @override
  void suara() {
    print('ciaw ciaw');
  }
  void terbang(){
    print('Menggunakan kedua sayapnya');
  }
}
void main(){
  var panggil = Hewan();
  panggil.suara();
  var call = Kucing();
  call.suara();
  call.lari();
  var called = Burung();
  called.suara();
  called.terbang();
}