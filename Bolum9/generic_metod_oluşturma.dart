void main(List<String> args) {
  double doubleOrtalama= ortalamaBul<double>(1, 3);
  double intOrtalama= ortalamaBul<int>(8, 5);

  print("Ortalama $intOrtalama");
  print("Ortalama $doubleOrtalama");
}
double ortalamaBul<T extends num >(T s1, T s2){
  return (s1+s2)/2;
}