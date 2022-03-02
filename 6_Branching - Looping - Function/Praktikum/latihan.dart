//Soal latihan no.1 dari mentor
import 'dart:io';
import 'dart:math';
void main(){
  double bayar;
  stdout.write("Total Belanja: ");
  double total = double.parse(stdin.readLineSync()!);
  if (total > 100000){
    total = total - (total*0.1);
  }
  bayar = total;
  print("Tampilkan total pembayaran: $bayar");
}