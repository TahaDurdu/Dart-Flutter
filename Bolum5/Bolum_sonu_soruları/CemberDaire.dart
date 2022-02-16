class CemberDaire {
 int _yaricap = 1;
 double _PI =3.14;

 CemberDaire(int yaricap){
   yariCapKontrol=yaricap;
 }

 void set yariCapKontrol(int deger){
   if (deger >0) {
     _yaricap=deger;
   }else{
     _yaricap=1;
   }
 }

 double cevreHesapla(){
   return 2 * _PI* _yaricap;
 }

 double alanHesapla(){
   return _PI * _yaricap * _yaricap;
 }

}