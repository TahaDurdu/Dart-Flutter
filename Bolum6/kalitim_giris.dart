void main(List<String> args) {
  NormalUser normal =NormalUser();
  normal.davetEt();
  AdminUser admin =AdminUser();
  admin.toplamKullaniciSayisiniGoster();
  SadeceOkuyaBilenNormalUser okuma=SadeceOkuyaBilenNormalUser();
  okuma.adiniSoyle();
  okuma.girisYap();

  User user6 = AdminUser();
  User user7 = SadeceOkuyaBilenNormalUser();//upcasting yukarı cevrim

  List<User> tumUserler = [];
  tumUserler.add(user6);
  tumUserler.add(user7);

print("-------");
  test(user6);
  test(user7);

}
void test(User kullanici){
  kullanici.girisYap();   //polimorfizim Çok Biçimlilik
}
class User {
  String email="";
  String passaword="";

  void girisYap(){
    print("Giriş Yapıldı"); 
  }
}
class NormalUser extends User {
  void davetEt(){
    print("Normail user davet etti");
  }
  @override
  void girisYap(){
    print("Normal Kulannıcı Giriş Yaptı");
  }
}
class SadeceOkuyaBilenNormalUser extends NormalUser  {
  void adiniSoyle(){
    print("Ben Sadece Okuyabilirim");
  }
  @override
  void girisYap() {
    print("Sadece Okuyan Giriş Yaptı");
  }
}
class AdminUser extends User{

  void toplamKullaniciSayisiniGoster(){
    print("Toplam user sayısı 20");
  }
}