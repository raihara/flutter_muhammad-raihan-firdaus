//Soal latihan no.4 dari mentor
import 'dart:io';
import 'dart:math';
void main(){  
  var bayar;
  var member = 'member';
  stdout.write("Total Belanja: ");
  int total = int.parse(stdin.readLineSync()!);
  if (member==member){
    if (total>500000){
      bayar = total - (total * 0.15);
    }
    else if (total>100000){
        bayar = total - (total * 0.1);
    }
    else{
      bayar = total;}
 }
  else{
    if (total>100000){
      bayar = total - (total * 0.05);
    }
    else{
      bayar = total;
    }
  }
  print(bayar);
}