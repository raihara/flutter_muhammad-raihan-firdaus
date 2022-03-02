//Soal latihan no.5 dari mentor
import 'dart:io';
void main(){
  stdout.write("Pilih menu 1 - 7: ");
  int hari = int.parse(stdin.readLineSync()!);
  switch(hari){
  case 1:
      print("Senin");
  break;
  case 2:
      print("Selasa");
  break;
  case 3:
      print("Rabu");
  break;
  case 4:
      print("Kamis");
  break;
  case 5:
      print("Jum'at");
  break;
  case 6:
      print("Sabtu");
  break;
  case 7:
      print("Minggu");
  break;
  default:
      print("pilihan tidak ditemukan");
  }
}