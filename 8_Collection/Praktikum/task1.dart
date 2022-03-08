test (List listing, int pengali){
  var myd = [];
  for(var list in listing){
      myd.add(list * pengali);
    }
  return myd;
}
Future <void> main() async{
  var myd = [];
  int pengali = 5;
  List listing = [5, 2, 10, 3, 1];
  var listed = await test(listing, pengali);
  
  print(listing);
  print(listed);
}