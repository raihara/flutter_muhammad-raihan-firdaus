// import 'dart:io';
// PolaJamPasir(int tinggi){
//     for(int i = 1; i <= tinggi; i++){
//       for(int j = 1; j <= tinggi; j++){
//         var abs = tinggi - j;
//         if(abs < i){
//           stdout.write('*');
//         }else{
//           stdout.write(' ');
//         }
//       }
//       print('');
//     }
// }
// polaJamPasirTerbalik(int tinggi){
//   for(int i = tinggi; i>=1;i--){
//     for(int j=1;j<= tinggi;j++){
//       var abs = tinggi - j;
//       if(abs < i){
//         stdout.write('* ');
//       }else{
//         stdout.write(' ');
//       }
//     }
//     print('');
//   }
// }
// void main(){
//   stdout.write("Masukan nilai anda: ");
//   int? tinggi = int.parse(stdin.readLineSync()!);
//   PolaJamPasir(tinggi);
// }
import 'dart:io';
diagonal(int tinggi){
  for (int x = 1; x <= tinggi; x++){
    for (int y = 1; y <= tinggi; y++)
    {
      if ( x == y ) // || y==(tinggi-x)+1)
        stdout.write(x);
      else
        stdout.write(' ');
      }print('');
  }
}
void main(){
  stdout.write("Masukan nilai anda: ");
  int? tinggi = int.parse(stdin.readLineSync()!);
  diagonal(tinggi);
}