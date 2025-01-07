// 코드의 진입점
void main() {
  // Dog와 Water 객체 생성
  Dog myDog = Dog();
  Water waterBottle = Water();
  Water waterBottle2 = Water();
  myDog.drinkWater(waterBottle2);
  print(waterBottle2.liter);
} // end of main

class Dog {
  // 변수의 선언과 동시에 초기화(값을 넣다)
  String name = '토토';
  int age = 5;
  String color = '블랙';
  int thirsty = 100;

  // 2. 물을 마실 때 마다 갈증 지수가 10씩 내려간다.
  void drinkWater(Water water) {
    thirsty = thirsty - 10;
    water.drink();
  }
}

class Water {
  double liter = 2.0; // 물 2리터

  void drink() {
    // liter = liter - 0.1;
    liter -= 0.1;
  }
}
