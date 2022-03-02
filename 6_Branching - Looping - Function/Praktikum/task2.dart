import 'dart:io';
void main() {
  int faktorialisasi = 1;
  stdout.write("Masukkan bilangan bulat : ");
  int? nilai = int.parse(stdin.readLineSync()!);
  if (nilai < 0){
    print("Angka yang dimasukkan bukan bilangan bulat");
  } else {
    for (int i = 1; i <= nilai; i++){
      faktorialisasi *= i;
    }
    print("Hasil faktorial dari $nilai adalah $faktorialisasi");
  }
}