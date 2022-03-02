/* Soal Task no.1
Jika nilai > 70 return A
Jika nilai > 40 return B
Jika nilai > 0 return C
Return teks kosong
*/
import 'dart:io';
String score(double nilai){
  if (nilai > 70) {
    return "A";
  } else if (nilai > 40) {
    return "B";
  } else if (nilai > 0) {
    return "C";
  } else {
    return "";
  }
}

void main() {
  stdout.write("Masukan nilai anda: ");
  double nilai = double.parse(stdin.readLineSync()!);
  print("Maka grade nilai anda adalah ${score(nilai)}");
}