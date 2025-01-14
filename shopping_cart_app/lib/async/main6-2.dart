void main() async {
  await perimeter(10, 5);
  print('메인 함수 완료');
}

Future<void> perimeter(int n1, int n2) async {
  print('perimeter 시작');

  var result = 0;

  await Future.delayed(Duration(seconds: 3), () {
    result = (n1 + n2) * 2;
  });
  print("결과값 : ${result}");
}
