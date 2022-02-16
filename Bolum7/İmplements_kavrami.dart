void main(List<String> args) {
  
}
abstract class Hayvan {
  
}
abstract class Havlayabilenler {
  void bark();
}
abstract class Kosabilenler {
  void run();
}
abstract class Ucabilenler {
  void fly();
  void test(){
    print("Test");
  }
}

class Kopek extends Hayvan implements Kosabilenler,Havlayabilenler {
  @override
  void bark() {
    // TODO: implement bark
  }

  @override
  void run() {
    // TODO: implement run
  }
  
}
class  Kus implements Ucabilenler {
  @override
  void fly() {
    // TODO: implement fly
  }

  @override
  void test() {
    // TODO: implement test
  }
  
}