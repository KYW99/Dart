// 널 체크 연산자( ?. ) 와 널 병합 연산자 ( ?? ) 에 대해 알아 보자

// 코드의 시작점
void main() {
  // 1. 널 체크 연산자
  String? userName = getNullableuserName();
  // 널 체크 연산자
  int? userNameLength = userName?.length;

  print('사용자 이름의 길이 값 : ${userNameLength}');
  print('-----------------------------------------');

  // 2. 널 병합 연산자
  String finalUserName = userName ?? '홍길동';
  print('finalUserName : ${finalUserName}');

  // ?. 와 ?? 를 함께 사용하는 예시
  String upperOrNoName = userName?.toUpperCase() ?? 'NO_NAME';
  print('upperOrNoName : ${upperOrNoName}');
}

// 함수를 만들어 보자.
// 선택적 명명 매개변수
String? getNullableuserName({String? name}) {
  return name;
}
