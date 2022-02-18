/**
 * Bazen değişkenler veya non-nullable olmalıdır ama ilk değer ataması hemen gerçekleşmeyecektir.
 bu durumlarda late anahtar kelimesi kullanılırlar.
 
 *Bir değişkenin önüne late yazdığınızda Dart'a şunları söylemiş oluruz
  1-Bu değişkene bir değer atama
  2-değiri sonradan atacaksın
  3-bana güven dart,valla bu değişkeni sen okumadan önce initialize edeceğim

* Eğer değişkene değer atamadan okumaya çalışırsanız hata alırsanız.
 */

class Yemek {
  late final String tanim;
  late final int fiyat;

  Yemek(int fiyat) {
    this.fiyat = fiyat;
  }

  void setTanim(String tanim) {
    this.tanim = tanim;
  }
}

void main(List<String> args) {
  final yemegim = Yemek(100);
  yemegim.setTanim("kuru fasülye");
  print(yemegim.tanim);
  print(yemegim.fiyat);
}
