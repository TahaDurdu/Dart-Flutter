void main(List<String> args) async {
  Map<dynamic, dynamic> gelenkullanici = await idKisiGetir(6);
  List<dynamic> kurslarListesi =
      await usernameGoreKurslariGetir(gelenkullanici['username']);
  String yorum = await kursyourumugetir(kurslarListesi[0]);
  print(yorum);
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
