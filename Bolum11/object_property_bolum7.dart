import 'dart:math';

/**
 * Sınıflarımızı oluştururken oluşturduğumuz değişkenler(prooerty) için de null safety
 özellikleri geçerlidir. Bu özellikler ilk defa uyguladığımızda karışık gelebilir.

 *Çünkü bu propertylerin getter ve setter metotları doğrudan veya dolaylı olarak vardır.
 Bundan dolayı da bu değişkenler aynı scope içinde farklı değerler üretebilirler. Siz bu 
 yapılara her erişim yaptığınızda farklı sonuçlar alabilirsiniz.

 *bunun çözümü ise ilgili veriyi bir değişkende saklayıp, getter üzerinden değil değişken 
 üzerinden kontrolleri yapmanızdır.
 */

class MetinUretici {
  String? metin = "Taha";
}

class RasgeleMetinUretici {
  String? degerUret() {
    if (Random().nextBool()) {
      return "String ifade";
    } else
      return null;
  }
}

void main(List<String> args) {
  final uretici = RasgeleMetinUretici();
  String? sonuc = uretici.degerUret();
  if (sonuc == null) {
    print("Değer null");
  } else {
    metniYazdir(sonuc);
  }

  MetinUretici m = MetinUretici();
  String? met = m.metin;
  if (met != null) {
    metniYazdir(met);
  }
}

void metniYazdir(String ifade) {
  print(ifade);
}
