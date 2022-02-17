void main(List<String> args) async {
  print("İnternetten Kişi verisi getirilercek");

  kisiileilgiliVeriler();

  print("Başka işlem yapılacak");
  print("İşlem bitti");
}

void kisiileilgiliVeriler() async {
  String kisi = await kisiVerisiGetir();
  print(kisi.length);
}

Future<String> kisiVerisiGetir() {
  return Future<String>.delayed(Duration(seconds: 3), () {
    return "Kişi adı : Taha ve ıd: 100";
  });
}
