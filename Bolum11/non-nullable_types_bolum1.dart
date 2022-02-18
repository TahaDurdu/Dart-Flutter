/**
 * Dart varsayınlan olaral hiç bir değişkene null değer atamasına izin vermez.
 buna dart non-nullable tip denir.bir değişken tanımlayıp uygun veriyi atamazsanız size uyarı verecektir.
 bu uyarıda değişkene ilk değeri atamanız istenecektir.Böylece program çalışırken hiçbir non-nullable bir değişken null değeri göstermez(null sound)

 * bunu istemiyorsanız veri tipinin sonuna ? koyarsınız.Böylece değişkende null değer saklanabilir.bunlar da aslında yeni bir veri tipidir.
 ? koyarak Nullable type oluşturmuş olursunuz. 
 */

void main(List<String> args) {
  //nullable değişken
  int? a;
  a = null;
  print('a değişkeninin değeri $a');
  //   print(a + 3); olmaz bu
}
