import 'dart:math';

class VeritabaniIslemleri {
  String _kullaniciAdi ="taha";
  String _sifre="123";

   bool baglan() {
    if (_InternetVarMi()) {
      if (_kullaniciAdi == "taha" && _sifre=="123") {
        return true;
      }else{
        return false;
      }
    }else {
      return false;
    }
  }
  VeritabaniIslemleri(){}
  VeritabaniIslemleri.loginWithNameandPassaword(String kullaniciAdi,String sifre){

  }

  bool _InternetVarMi(){
    if (Random().nextBool()) {
      return true;
    }else 
    return false;
  }
}