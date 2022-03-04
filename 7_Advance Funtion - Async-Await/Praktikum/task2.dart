void main(){
  List<int> list = [10, 3, 4, 1, 7, 2];
  List<String> nmap = [];
  print(list);

  nmap = list.map((coba) => "angka " + coba.toString()).toList();
  nmap.forEach((element) {
    print(element);
  });
}