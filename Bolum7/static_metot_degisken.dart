void main(List<String> args) {
  Matematik m1  =Matematik (50,20);
  m1.topla();
  m1.cikar();

  Matematik m2 = Matematik(30,10);
  m2.topla();
  m2.cikar();

  print(Matematik.PI);
  Matematik.sinifAdiniSoyle();

  print("Toplam işlem sayısı ${Matematik.toplamIslemSayisi}");

  }
class Matematik {
  //instance varible
  int birinciSayi = 0;
  int ikinciSayi= 0;
  static int toplamIslemSayisi=0;
  //class variable, sınıf değişkeni
  static double PI=3.14;
  static void sinifAdiniSoyle(){
    print("Ben matematik sınıfıyım");
  }
  Matematik (this.birinciSayi,this.ikinciSayi);

  void topla(){
    toplamIslemSayisi++;
    print("Toplöm ${birinciSayi+ ikinciSayi }");
  }

  void cikar(){
    print("Toplöm ${birinciSayi- ikinciSayi }");
    toplamIslemSayisi++;
  }
}