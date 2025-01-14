// 팀장이, 선임개발자가 물고기 소리나는 프로그램을 만들어 달라 요청
class Dog {
  void performAction() {
    print('멍멍 배고파');
  }
}

class Cat {
  void performAction() {
    print('야옹 배고파');
  }
}

// 신입이 작성 했다고 가정
class Fish {
  void hungry() {
    print('뻐끔뻐끔 배고파');
  }
}

void main() {
  Dog d = Dog();
  Cat c = Cat();

  Fish f = Fish();
  f.hungry();
}
