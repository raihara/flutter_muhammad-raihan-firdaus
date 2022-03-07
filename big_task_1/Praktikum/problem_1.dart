import 'dart:io';
bool score(double nilai){
  if (nilai % 2 == 0) {
    return true;
  } else
  return false;
}

void main() {
  stdout.write("Masukan nilai anda: ");
  double nilai = double.parse(stdin.readLineSync()!);
  print(score(nilai));
}