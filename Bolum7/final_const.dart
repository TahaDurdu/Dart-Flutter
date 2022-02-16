void main(List<String> args) {
  var str ="taha";
  str = "Durdu";

  // final String str2= "taha";
  // str2="Durdu";

  // const String str3 = "Taha";
  // str3 = "Durdu";
/*
  final tarih = DateTime.now();
  const tarih2 = DateTime.now();


final liste =[1,2,3];
final liste2=[1,2,3];

liste.add(5); 
liste2.add(4);

liste =[5,6];
*/

//canonicalized
const liste =[1,2];
const liste2=[1,2];

liste.add(6);
liste2.add(6);

if (liste==liste2) {
  print("eşit");
}else{
  print("eşit değil");
}

}