import 'musteri.dart';
import 'veritabaniislemleri.dart';

void main(List<String> args) {

  Musteri musteri1 =Musteri(2009 );
  musteri1.bilgileriYazdir();
  musteri1.musteriNoAta=952; 
  print(musteri1.musteriNoSoyle); //getter
  VeritabaniIslemleri db =VeritabaniIslemleri();
  
  
  bool sonuc= db.baglan();
  if (sonuc) {
    print("Bağlanıldı");
  }else 
  print("Başarısız");


}
