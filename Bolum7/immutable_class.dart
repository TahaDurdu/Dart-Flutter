void main(List<String> args) {
  const Student ogr1 = Student(5,"taha");
  const Student ogr2 = Student(5,"taha");
  var ogr3= const Student(5, "taha");//yeni değer atanabilir

  if (ogr3==ogr2) {
    print("Eşit");
  }else{
    print("Eşit değil");
  }
}
class Student {
  final int id;
  final String isim;

 const Student(this.id,this.isim);
}
