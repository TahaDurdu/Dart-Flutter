void main(List<String> args) {
  Kisi taha =Kisi("Taha",21);
  taha.kendiniTanit();

  Calisan hasan=Calisan("Hasan",25,300);
  hasan.kendiniTanit();
}
class Kisi {
    String isim;
    int yas;
    Kisi(this.isim,this.yas);
    void kendiniTanit(){
      print("Benim adım $isim ve yaşım $yas");
    }
}
class Calisan extends Kisi{
  int maas;
  Calisan(String name,int age,this.maas):super(name,age);
  @override
  void kendiniTanit(){
    super.kendiniTanit();
    print("Maaşım da $maas");
  }
}