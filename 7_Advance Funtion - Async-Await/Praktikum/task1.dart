void main(){
  List list = [5, 2, 10, 3, 1, 5];
  List pengali = [1, 25, 2, 5, 4, 7];
  print(list);
  Future.delayed(Duration(seconds: 2), (){
    for(var listed in list){
      return list[listed];
  }
  });
}
/*
import 'dart:io';
fungsi (List listing, int pengali) async{
  Future.delayed(Duration(seconds: 1), (){
    for(var list in listing){
      print(listing);
      return listing[list] * pengali;
    }
  print(listing);
  });
}
void main() async{
  List listing = [1, 2, 3, 4, 5];
  List pengali = [2, 4, 6];
  print(fungsi(listing, pengali));
}*/