void main(List<String> args) {
    Asker taha = Asker ("taha",25);
    Er yusuf=Er("yusuf",21);
    yusuf.memleket;
    yusuf.selamla();

}

class Asker {
  String ad = "";
  int yas =0;
  String memleket="Erz";
  Asker(this.ad,this.yas){
    print("Asker sınıfının kurucusu çalıştı");
  }
  void selamla(){
    print("Merhaba adım $ad ve yaşım $yas");
  }
}

class  Er extends Asker  {
  Er(String ad,int yas):super(ad,yas){
    print("Er sınıfının kurucusu çalıştı");
  }
  void memleketDegistir(String yenimemleket){
    super.memleket =yenimemleket;
  }
}
