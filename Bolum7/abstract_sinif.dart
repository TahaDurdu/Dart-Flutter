

void main(List<String> args) {
  Sekil s1 = Kare(5);
  print(s1.alanHesapla());
  print(s1.cevreHesapla());
  s1.selamla();

  Sekil s2 = Dikdortgen(5,7);
  print(s2.alanHesapla());
  print(s2.cevreHesapla());
  s2.selamla();

  List<Kare> tumkareler=[];
  List<Dikdortgen> tumdikdortgenler=[];
  List<Sekil> tumsekiller=[];
  tumsekiller.add(s1);
  tumsekiller.add(s2);

  print("-------");

  test(s1);
  test(s2);
}

void test(Sekil sekil){
  sekil.selamla();
}
abstract class Sekil {
  double alanHesapla();
  double cevreHesapla();
  void selamla(){
    print("Ben Şekil sınıfındanım");
  }
}
class Kare extends Sekil {
  int kenar;
  Kare(this.kenar);

  @override
  double alanHesapla() {
    return kenar * kenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return 4* kenar.toDouble();
  }
 
}

class Dikdortgen extends Sekil {
  int uzunKenar;
  int kisaKenar;

  Dikdortgen(this.kisaKenar,this.uzunKenar);
  @override
  double alanHesapla() {
    return uzunKenar*kisaKenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return (uzunKenar+kisaKenar)*2.toDouble();
  }
  @override
  void selamla() {
    print("Ben dikdörtgen sınıfındanım");
  }
}
