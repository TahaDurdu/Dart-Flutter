void main(List<String> args) async {
  print("Program başladı");
  Future.delayed(Duration(seconds: 0), () {
    print("Sıfır saniyelik işlem ");
  });
  print("Program bitti");

  Future<int> toplam = Future(() {
    int toplam = 0;
    for (int i = 0; i < 1000000; i++) {
      toplam = toplam + i;
    }
    throw Exception("Toplam hesaplanamadı");

    //return toplam;
  });
  // toplam.then((int toplam) => print(toplam)).catchError((hata) => print(hata));

  try {
    int forSonuc = await toplam;
    print("****** $forSonuc");
  } catch (e) {
    print(e);
  }

  var f2 = Future.value("Taha");
  var f3 = Future.error("Hata ile biten future");

  f3.catchError((hata) => print(hata));
}
