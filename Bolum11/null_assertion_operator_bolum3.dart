/**
 * Eğer bir nullable tipin null olmadığından eminseniz,null assertion operator yani ! kullanabilirsiniz.
 böylece dart o değiskene non-nullable olarak davranır ve sorun kalmaz.

*Bu işareti kullnınca demiş olırsınız: değer null olmayacak bu yüzden bu değeri non-nullable bir değişkene atabilirsiniz.

*Eğer bu düşüncenizde hatalıysa/hakksızsanız dart run-timeda bir hata fırlatır.Böylece programımız null hatalarına açılmış olur bu 
yüzden yüzde yüz kodunuzun null olmayacağından emin değilseniz kullanmayın.

*Özetle ! koyduğunuzda Dart'a şunu dersiniz: biliyorum bu değişken null olabilir ama söz veriyorum 
ki null değer yok , o yüzden bunu null değer kabul etmeyen bir değişkene atayabilir.

 * dart aynı scopeda ise o değişken nullable bile olsa null olup olmadığını anlayabilir.
 Farklı scopeda yani kapsamdaysa emin olmaz.

 */

int? nullOlanilirAmaDegil = 1;

void main(List<String> args) {
  List<int?> nullDegerTutanListe = [2, 3, null];

  int a = nullOlanilirAmaDegil!;
  int b = nullDegerTutanListe.first!;
  int c = nullDondurebilirAmaDondurmeyecek()!.abs();
}

int? nullDondurebilirAmaDondurmeyecek() {
  return 5;
}
