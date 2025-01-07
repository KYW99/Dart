// 익명 함수
// 코드의 시작점
void main() {
  // 응용 코드 만들어 보기 - 익명 함수
  // 원의 넓이를 구하는 함수
  var area = (r) {
    return 3.14 * (r * r);
  };

  // 원의 둘레를 구하는 함수
  var circumference = (r) {
    return 2 * 3.14 * r;
  };

  // 직사각형의 둘레를 구하는 함수
  var Rperimeter = (length, width) {
    return 2 * (length + width);
  };

  // 직사각형의 넓이를 구하는 함수
  var rectangleArea = (length, width) {
    return length * width;
  };

  // 섭씨를 화씨로 변환하는 함수
  var celsiusToFahrenheit = (celsius) {
    return (celsius * 9 / 5) + 32;
  };

  print('원의 넚이 = ::: ${area(7)}');
  print('원의 둘레 = ::: ${circumference(7)}');
  print('직사각형의 둘레 = ::: ${Rperimeter(8, 4)}');
  print('직사각형의 넓이 = ::: ${rectangleArea(8, 4)}');
  print('섭씨 25도는 화씨 ::: ${celsiusToFahrenheit(25)}도 입니다.');
} // end of main
