// 코드의 진입점
// 캐스케이드 연산자
// .. 연산자를 사용하면 동일 객체하에 여러 메서드나 속성을 연속적으로 호출 할 수 있는
// 유용한 연산자 이다.
class Person {
  String? name;
  int money = 0;

  void setName(String newName) {
    this.name = newName;
  }

  void addMoney(int amount) {
    //this.money = this.money = amount;
    this.money += amount;
  }
}

void main() {
  var p1 = Person()
    ..setName('홍길동')
    ..addMoney(5000)
    ..money += 2000;
  print(p1.name);
  print(p1.money);
} // end of main
