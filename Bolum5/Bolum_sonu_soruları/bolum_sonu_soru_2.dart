

import 'dart:math';

import 'Ogrenci.dart';

void main(List<String> args) {
  Ogrenci ogr1=Ogrenci(id: 5,notdegeri: 10);
  List<Ogrenci> tumogrenciler = List.filled(100, Ogrenci());

  ogrenciListesiniDoldur(tumogrenciler);
  for (Ogrenci oankiogrenci in tumogrenciler) {
    print(oankiogrenci);
  }

  print("Tüm Öğrencilerin ortalaması  " + ogrencilerinOrtalamasiniHesapla(tumogrenciler).toString());

}
  void ogrenciListesiniDoldur(List<Ogrenci> liste){
    for (var i = 0; i < liste.length; i++) {
      liste[i]=Ogrenci(id: Random().nextInt(1000),notdegeri: Random().nextInt(100));
    }
 } 

 double ogrencilerinOrtalamasiniHesapla(List<Ogrenci> liste){
   int toplam=0;
   for (Ogrenci oankiOgrenci in liste) {
     toplam = toplam + oankiOgrenci.notdegeri;
   }
   return toplam/ liste.length;
 }