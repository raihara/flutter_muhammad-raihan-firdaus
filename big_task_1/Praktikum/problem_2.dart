import 'dart:io';
score(double nilai){
  if (nilai >= 180 && nilai <360) {
    return nilai - 180;
  } else if (nilai < 180){
    return nilai + 180;
  } else if (nilai >= 360 || nilai == 180){
    return 0;
  }
  else{
    return 'angka tidak memenuhi';
  }
}

void main() {
  stdout.write("Masukan nilai anda: ");
  double nilai = double.parse(stdin.readLineSync()!);
  print(score(nilai));
}