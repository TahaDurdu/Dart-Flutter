void main(List<String> args) {
  Person taha = Person(3, "taha");
  Ogrenci hasan = Ogrenci(1,"hasan",10);
  Person ayse =Ogrenci(8,"Ayşe",8);
  var yunus = Person(6, "yunus");
  var ali = Ogrenci(7,"ali",4);

  List<Person> tumOgrenciler = [taha,hasan,ayse,yunus, ali];

  tumOgrenciler.sort((ogr1,ogr2){ //sıralama
    if (ogr1.id< ogr2.id) {
      return -1;
    }else if (ogr1.id> ogr2.id){
      return 1;
    }else return 0;
});
  print(tumOgrenciler);


  var mapList = tumOgrenciler.map((Person e) => "${e.id}").toList(); //.toSet() olursa tekrar eden elemanları tek yazar
  print(mapList);


  tumOgrenciler.add(yunus);
  tumOgrenciler.addAll([ayse,ali]);

  print(tumOgrenciler); 

  bool sonuc = tumOgrenciler.any((Person element) => element.id >3); // teke bakar
  print(sonuc);

  Map<int , Person> yeniMap = tumOgrenciler.asMap();
  print(yeniMap[0]!.id);

  print(tumOgrenciler.contains(taha));

  bool sonucEvery = tumOgrenciler.every((element) => element.isim.length>0); //hepsine bakar

  print(sonucEvery);

  var bulunan =tumOgrenciler.firstWhere((element) => element.id==1);//ilk gördüğünü verir
  print(bulunan);

/*
  var liste1 = List<Ogrenci>.filled(5, Ogrenci(0,"",0));
  var listeFrom= List<Ogrenci>.from(tumOgrenciler.whereType<Ogrenci>());
  var listeOf = List<Ogrenci>.of(tumOgrenciler.whereType<Ogrenci>());
  var listeGenerate= List<Ogrenci>.generate(5, (index) => Ogrenci(index, "$index", index*2));


  print(listeFrom);
  print(listeGenerate);
  var degistirilemezListe = List.unmodifiable([0,1,2]);
 //digistirilemezListe.add(5);
*/
}

class Person {
  int id=0;
  String isim="";

  Person(this.id,this.isim);
  @override
  String toString(){
    return "id:$id ve isim:$isim\n";
  }
}

class Ogrenci extends Person {
  int alinanDersSayisi = 0;
  Ogrenci (id,isim,alinanDersSayisi):super(id,isim);
  @override
  String toString(){
    return "id:$id ve isim:$isim ve alınan ders sayısı:$alinanDersSayisi\n";
  }
}