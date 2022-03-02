/* Soal Task no.1
Jika nilai > 70 return A
Jika nilai > 40 return B
Jika nilai > 0 return C
Return teks kosong
*/
import 'dart:io';
String scoreA(double nilai){
  return "A";
}
String scoreB(double nilai){
  return "B";
}
String scoreC(double nilai){
  return "C";
}
String kosong(double nilai){
  return "";
}
void main() {
  stdout.write("Masukan nilai anda: ");
  double nilai = double.parse(stdin.readLineSync()!);
  if (nilai > 70) {
    print(scoreA(nilai));
  } else if (nilai > 40) {
    print(scoreB(nilai));
  } else if (nilai > 0) {
    print(scoreC(nilai));
  } else {
    print(kosong(nilai));
  }
}