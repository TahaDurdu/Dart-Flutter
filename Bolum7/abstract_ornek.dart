void main(List<String> args) {
  Veritabani db =FireBase();
  db.userDelete();
  db.userSave();

  userGuncelle(db);
}

void userGuncelle(Veritabani veritabani) {
  veritabani.userUpdate();
}

abstract class  Veritabani {
    void userSave();
    void userUpdate();
    void userDelete();
}

class OracleDB extends Veritabani {
  @override
  void userDelete() {
    print("Kullanıcı Oracleden Silindi");
  }

  @override
  void userSave() {
      print("Kullanıcı Oracele Kaydedildi");

  }

  @override
  void userUpdate() {
      print("Kullanıcı oracelden Güncellendi");

  }
  
}
class  FireBase extends Veritabani {
   @override
  void userDelete() {
    print("Kullanıcı firebaseden Silindi");
  }

  @override
  void userSave() {
      print("Kullanıcı firebase Kaydedildi");

  }

  @override
  void userUpdate() {
      print("Kullanıcı firebasden Güncellendi");

  }
}