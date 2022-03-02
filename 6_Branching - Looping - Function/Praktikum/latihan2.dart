//Soal latihan no.2 dari mentor
import 'dart:io';
void main(){
  var bayar;
  stdout.write("Masukan nilai anda: ");
  int nilai = int.parse(stdin.readLineSync()!);
  if (nilai > 70){
    print('keterangan = lulus');
  }
  else {
    print('keterangan = gagal');
  }
}