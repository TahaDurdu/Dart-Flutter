
import 'mystack.dart';

void main(List<String> args) {
  MyStack mystack= MyStack();
  mystack.push(5);
  mystack.push("Taha");
  mystack.push(true);

  print(mystack.pop());
  print(mystack.pop());
  print(mystack.pop());

  IntMyStack intmystrackt= IntMyStack();
  intmystrackt.push(5);
  
  StrMyStack strmystrackt= StrMyStack();
  strmystrackt.push("taha");

  GenericStack<String> genericStack = GenericStack();
  genericStack.push("taha");
  print(genericStack.pop());

}