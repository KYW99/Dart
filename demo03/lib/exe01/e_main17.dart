abstract class Character {
  String name;
  int power;
  int hp;

  Character(this.name, this.power, this.hp);

  void attack();

  void showStatus() {
    print('이름: $name, 파워: $power, Hp: $hp');
  }
}

class Wizard extends Character {
  Wizard(String name, int power, int hp) : super(name, power, hp);

  @override
  void attack() {
    print('$name이(가) 얼음 마법으로 공격! (파워: $power)');
  }
}

class Warrior extends Character {
  Warrior(String name, int power, int hp) : super(name, power, hp);

  @override
  void attack() {
    print('$name이(가) 2단 콤보로 공격! (파워: $power)');
  }
}

void main() {
  // 캐릭터 생성
  Character wizard = Wizard('마법사', 50, 100);
  Character warrior = Warrior('전사', 70, 150);

  // 캐릭터 상태 출력
  wizard.showStatus();
  warrior.showStatus();

  // 다형성으로 공격 실행
  wizard.attack();
  warrior.attack();
}
