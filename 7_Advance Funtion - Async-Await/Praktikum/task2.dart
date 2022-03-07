dataMap (md){
  Map<String, String> mdmp = {};
  for(var dat in md){
    mdmp[dat[0]] = dat[1];
  }
  print(mdmp);
}
void main(){
  var md = [
    ["id", "327540"],
    ["tipe keanggotaan", "Diamond"],
    ["nama", "Raihan"],
  ];
  print(md);
  dataMap(md);
}