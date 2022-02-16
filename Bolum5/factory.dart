void main(List<String> args) {
  Ogrenci emre = Ogrenci(5, "Emre");  
  Ogrenci taha =Ogrenci.idsiz("taha");
  Ogrenci Ayse = Ogrenci.factoryKurucusu(-9,"Ayşe");  
  
  print(Ayse.id);
  print(Ayse.isim);
}
class Ogrenci{
  int id = 0;
  String isim ="";

  Ogrenci(this.id, this.isim){
    print("varsayınlan kurucu çalıştı");
  } 
  Ogrenci.idsiz(this.isim){
  print("isimlendirilmiş kurucu çalıştı");
  }

  factory Ogrenci.factoryKurucusu(int id,String isim){
    if (id <0) {
      return Ogrenci(5,isim);
    }else
    return Ogrenci(id,isim);
  }
}