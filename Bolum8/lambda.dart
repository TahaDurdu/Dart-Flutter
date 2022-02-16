//ismi olmayan fonksiyonlardır.her fonksiyon bir nesnedir.

void main(List<String> args) {
  Function fonksiyon1 = (int a,int b){
  int toplam = a+ b;
  print(toplam);
};

fonksiyon1(5,8);

String isim ="taha";

var f2= (int s)=> s*2;
var f3 =(int s2){
  return s2*2;
};
var sayi = f3(5);
print(sayi);
print(f3(6));

}
void sayilaritopla(int a,int b){
  int toplam = a+ b;
  print(toplam);
}