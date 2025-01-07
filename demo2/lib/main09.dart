// 화살표 함수(람다 표현식)
void main() {
  print('원의 반지름 5의 면적 : ${circle(5)}');
  print("직사각형 가로 3 세로 4의 면적은 : ${rectangle(3, 4)}");
}

double circle(double n1) => n1 * n1 * 3.14;
rectangle(n1, n2) => n1 * n2;

// 재활용 하고 싶다면 --> 함수 --> 좀더 간결 --> 화살표 함수
int add(int n1, int n2) {
  return n1 + n2;
}

int add2(int n1, int n2) => n1 + n2;
int sub(int n1, int n2) => n1 - n2;
int mul(n1, n2) => n1 * n2;
int div(n1, n2) => n1 / n2;

// 원, 직사각형의 면적을 구하는 코드를 작성하시오.
// 반지름의 값이 5.0인 원
// 가로길이 3.0 세로길이 4.0인 직사각형

// 위 문제를 화살표 함수를 사용해서 정의하고 결과값을 작성하는 코드를 작성하시오
