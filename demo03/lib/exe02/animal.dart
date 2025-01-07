// 소문자 연결 대문자 - 카멜
// 표기법 - 파스칼 케이스
class Animal {
  // 상수 (final) - 한 번은 반듯이 초기화 되어야 하는 변수
  final String name;

  // 생성자 (강제성)
  Animal(this.name);
}

// Dog 는 동물이다 <-- 다형성
class Dog extends Animal {
  Dog(String name) : super(name);

  void bark() {
    print('멍멍!');
  }
}

void main() {
  Dog d1 = Dog('멍멍이');
  print('강아지 이름 : ${d1.name}');
  d1.bark();

  Dog d2 = Dog('흰둥이');
  print(d2.name);
  d2.bark();
}
