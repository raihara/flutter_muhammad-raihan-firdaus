//Soal latihan no.3 dari mentor
import 'dart:io';
import 'dart:math';
void main(){  
  stdout.write("Masukan nilai anda: ");
  int nilai = int.parse(stdin.readLineSync()!);
  if(nilai > 85){
      print("Grade = A");
  }else if(nilai > 75){
      print("Grade = B");
  }else if(nilai > 60){
      print("Grade = C");
  }else if(nilai > 45){
      print("Grade = D");
  }else{
      print("Grade = E");
  }
}