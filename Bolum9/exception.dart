void main(List<String> args) {
   print("Program başladı");

   try {
     int sayi = 100 ~/0;
     print(sayi);
   }on IntegerDivisionByZeroException{
     print("Bölen sıfır olmaz");
   }on FormatException catch(e){
     print(e.message);
     print(e.source);
   }
    catch (e) {
     print("Hata Çıktu ${e}");
   }finally{
     print("İşlem bitti.");
   }

   print("Program bitti"); 
}