import 'dart:io';
PolaJamPasir(int tinggi){
    for(int i = 2; i <= tinggi; i++){
      for(int j = 1; j <= tinggi; j++){
        var abs = tinggi - j;
        if(abs < i){
          stdout.write('* ');
        }else{
          stdout.write(' ');
        }
      }
      print('');
    }
}
polaJamPasirTerbalik(int tinggi){
  for(int i = tinggi; i>=1;i--){
    for(int j=1;j<= tinggi;j++){
      var abs = tinggi - j;
      if(abs < i){
        stdout.write('* ');
      }else{
        stdout.write(' ');
      }
    }
    print('');
  }
}
void main(){
  stdout.write("Masukan nilai anda: ");
  int? tinggi = int.parse(stdin.readLineSync()!);
  polaJamPasirTerbalik(tinggi);
  PolaJamPasir(tinggi);
}