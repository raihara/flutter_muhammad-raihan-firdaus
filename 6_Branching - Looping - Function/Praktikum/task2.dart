/* codingan awal void main() {
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
}*/
// codingan setelah direvisi
defacto(int value){
  int faktorialisasi = 1;
  for (int i = 1; i <= value; i++){
     faktorialisasi *= i;
   }
  return faktorialisasi;
}
void main() {
  print("Maka Faktorial dari 10 adalah ${defacto(10)}");
  print("Maka Faktorial dari 20 adalah ${defacto(20)}");
  print("Maka Faktorial dari 30 adalah ${defacto(30)}");
}