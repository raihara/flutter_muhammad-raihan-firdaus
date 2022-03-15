class Task<T> {
  var hasil, first, second;
  Task(T a, T b){
    first = a;
    second = b;
  }
  cetak<T>(){
    if(first.runtimeType == String && second.runtimeType == String){
      print(first + second);
    } else if ((first.runtimeType == int && second.runtimeType == int) || (first.runtimeType == double && second.runtimeType == double)){
      var small;
      var big;

      small = first;
      big = second;
      //Mengambil bilangan yang terkecil
      if (first <= second){
        small = first;
      } else {
        small = second;
      }
      //Mengambil bilangan yang terbesar
      if (first >= second){
        big = first;
      } else {
        big = second;
      }
      print('Cetak yang lebih besar = ${big}, sedangkan jika kecil cetak ${small}');
    } else if (first.runtimeType == bool && second.runtimeType == bool){
      print(first && second);
    } else {
      print('Type data tidak diketahui, silahkan samakan kedua tipe data nya.');
    }
  }
}
void main(){
  var call = Task('aku', ' makan');
  print('Hasil Type data String : ');
  call.cetak();
  var integer = Task(5, 10);
  print('Hasil Type data integer 5 dan 10: ');
  integer.cetak();
  var called = Task(1.5, 2.5);
  print('Hasil Type data double 1.5 dan 2.5: ');
  called.cetak();
  var panggil = Task(true, false);
  print('Hasil Type data boolean true dan falses: ');
  panggil.cetak();
}