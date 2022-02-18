/**
 *Dart dili,null değer alması mümkün olmayan ama null dğer alakmış gibi belirtilen 
 nullable tiplere, non-nullable gibi davranır buna type promotion denir.

 *Dart tipi sistemi,değişkenin nerede tanımlandığını ve nerede okunduğunu sürekli olarak analiz eder.
 bir değişken null değer alacak şekilde oluşturulmuş olabilir, ama okunmadan hemen önce null dışında değer atanırsa dart bunu tespit edebilir.


 */

void main(List<String> args) {
  String? mesaj;

  if (DateTime.now().hour < 12) {
    mesaj = "günaydın";
  } else {
    mesaj = "iyi akşamlar";
  }
  print(mesaj);
  print(mesaj.length);
}
