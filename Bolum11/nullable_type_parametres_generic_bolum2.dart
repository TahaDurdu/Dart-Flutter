/**
 * Generic tipleri belirlerken de nullable ve non-nullable kavramları geçerlidir.
 burda önemli olan ? nereye koyduğumuzdur.

*Liste null olabilir diyorsak List<String>?,listenin bazı elemanları null olanilir diyorsak
List<String?> diye belitebliriz.
 */
void main(List<String> args) {
  List<String> StringListesi = ['Emre ', 'hasna', 'assa'];
  List<String>? nullolabilecekStringListesi;
  List<String?> nullolanilecekStringleriTutanListe = ['Emre ', null, 'hasan'];

  print("String listesi $StringListesi");
  print("null olabilecek liste $nullolabilecekStringListesi");
  print(
      "Null olabilecek stringleri tutan listesi $nullolanilecekStringleriTutanListe");
}
