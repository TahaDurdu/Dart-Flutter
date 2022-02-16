class Ogrenci {
  int id ;
  int notdegeri;

  Ogrenci({this.id=1,this.notdegeri=1}); // Kullanıcı girmese bunları kullan
  
  @override
  String toString() {
    
    return "ID : $id  Not Değeri :$notdegeri";
    
  }
}