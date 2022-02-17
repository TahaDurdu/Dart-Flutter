/*
  Soru 
  bir fonksiyon yazın bu fonksiyon aldıgı id parametresine gore bir kullanıcı getirsin.bu işlem 2 saniye 
  sonundann sonuçlanacaktır ve getirilen kişi bilgisi map olarak alınacaktır.bu map yapısını username ve id bilgisi olması yeterlidir.

  getirilen kişi bilgisindeki username değerini kullanarak kişinin kurslarını getiren bir fonksiyon yazın. bu fonksiyon 
  4 saniye sürecektir ve username değerine ait olan kursları içinde kursun adları olan bir liste olarak döndürülecektir.

  son olarak da kusrlar listesindeki ilk eleman parametre olarak alan ve bu kursa ait bir yorumu döndüren fonksiyon yazın.
  bu fonksiyon 1 saniye sürecektir.


 */
void main(List<String> args) {
  idKisiGetir(5).then((value) {
    print(value);
    usernameGoreKurslariGetir(value['username']).then((List kursListesi) {
      print(kursListesi);
      String ilkkurs = kursListesi[0];
      kursyourumugetir(ilkkurs).then((String yorum) {
        print(yorum);
      });
    });
  });
}

Future<String> kursyourumugetir(String kursAdi) {
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "Kurs Mükemmel";
  });
}

Future<List> usernameGoreKurslariGetir(String username) {
  print("$username isimli kullanıcının kursları getiiriliyor");
  return Future<List>.delayed(Duration(seconds: 4), () {
    return ["Fulutter", "kotlin", "javascript"];
  });
}

Future<Map> idKisiGetir(int id) {
  print("$id idli kullanıcı getiriliyor");
  return Future<Map<String, Object>>.delayed(Duration(seconds: 2), () {
    return {'username': 'durdu', 'id': id};
  });
}
