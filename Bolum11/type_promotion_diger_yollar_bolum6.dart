/**
 * Dart dili , eğer aynı scope içinde null check yapılırsa nullable değikenlere
 non-nullable gibi davranır.

 *Farklı bir yöntem hata fırlatmak olablir. Eğer değer null ise hata fırlatırsak return
 ifadesi çalışmayacak ve fonksiyonumuz null değer döndürmeyecektir.
 */

void main(List<String> args) {
  try {
    print(karekterSatisiniBul(null));
  } catch (e) {
    print(e);
  }
}

int karekterSatisiniBul(String? metin) {
  if (metin == null) {
    throw Exception("Hata null değer");
    //return 0;
  }
  return metin.length;
}
