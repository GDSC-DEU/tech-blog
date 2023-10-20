---
layout: post
title: "Flutter 기초 문법"
date: 2023-10-15 16:45:00 +0900
categories: [Flutter]
author: 진희륜
---

[DASH](https://raw.githubusercontent.com/GDSC-DEU/tech-blog/main/assets/img/flutter_dash.png)

## 변수(Variable)

- 특정한 값(데이터를 담아두는 그릇)
  - 선언 : 변수명을 정함
  - 할당 : 값을 저장
- 일반적으로 변수를 선언할 때에는 선언과 동시에 **타입**을 정해 선언을 하게 됨
- Private Variable
  - 같은 파일내에서만 접근 가능한 변수가 됨
  - 변수명 앞에 `_ (언더바)`를 붙혀서 사용

---

## 타입

- 기본형
  - bool(참, 거짓형)
  - int(정수형)
  - double(실수형)
  - String(문자열형)
  - null(bool?, int?, …)
- 자료형(Collection)
  - List
  - Set
  - Map
- 확장형
  - Object
  - Enum
  - Future → 비동기 작업
    - 동기 : 1 2 3 4의 작업이 있을때 1, 2, 3, 4 순으로 순차 실행
    - 비동기 : 1 2 3 4의 작업이 있을때 1, 2, 3, 4를 동시에 실행
      - 어떤 작업이 먼저 종료되는지 알 수 없음
  - Stream → 지속적으로 값을 전달하고 받을 때 사용
- 가변형
  - `타입을 정의하지 않음`
    - 하지만 프로그래밍 특성 상, 주고 받는 타입에 대한 정의가 명확해야 추후에 코드를 관리하고 협업하는데 도움이 됨
    - 타입이 명시되지 않아서 나중에 코드 짤때 오류를 유발 할 수 있음
    - like TypeScript…
  - var : 처음 할당 시 부여 된 타입이 고정적으로 사용
  - dynamic : 코드 진행중에 타입이 유동적으로 변환됨
- 상수
  - 한 번 할당하면 `값을 바꿀 수 없음`
  - const : compile 시점에 상수 할당
  - final : 프로그램 진행 중에 상수 할당

---

## Collection

- 같은 타입의 변수들을 여러 개 담아놓을수 있는 공간(바구니)
- **List**
  ```dart
  List<Type> tList = [];
  ```
  - 여러 개의 원소들을 담을 수 있는 배열
  - 요소들의 순서가 정해져있어 index를 통해 접근 가능
- **Set**
  ```dart
  Set<Type> tSet = {};
  ```
  - 배열과 같이 여러 개의 원소를 담을 수 있지만 중복 값을 허용하지 않음
  - 요소들의 순서가 정해져있지 않아 index를 통한 접근이 불가능
- **Map**
  ```dart
  Map<KeyType, ValueType> tMap = {'K': 'V'};
  ```
  - List, Set과 달리 Key-Value 형태를 지님(JSON처럼)
  - Set과 마찬가지로 순서가 정해져있지 않음, index 대신 Key값을 통해 Value에 접근
  - Key는 중복 될 수 없으나, Value는 중복 가능

---

## 연산자

- 산술 연산자
  - \+ : 더하기
  - \- : 빼기
  - \* : 곱하기
  - / : 나누기(실수 반환)
  - ~/ : 나누기(정수 반환)
  - % : 나머지(모듈러)
- 할당 연산자
  - =
  - \*=
  - /=
  - +=
  - -=
  - ??= : 피연산자의 값이 null인 경우 특정 값을 할당
- 비교 연산자
  - == : equal
  - \!\= : not equal
  - \> : big
  - \>\= big or equal
  - < : less
  - \<\= : less or equal
  - is : 타입 체크
- 논리 연산자
  - && : AND
  - \|\| : OR
  - ! : bool의 값을 반전
  - ?? : null 확인
- 비트 및 시프트 연산자
  - `💡 Flutter에서는 거의 사용되지 않으니 있다는 것 정도만 숙지`
  - & : AND
  - \| : OR
  - ^ : XOR
  - << : Shift Left
  - \>\> : Shift Right
- 조건 연산자(삼항 연산자)
  ```dart
  // condition이 true인 경우 expr1, false인 경우 expr2 반환
  condition ? expr1 : expr2;
  ```

---

## 함수(Function)

- 프로그램에서 가장 기본이 되는 단위 중 하나
- 동작에 대한 단위

```dart
returnType functionName(parameter) {
	// 동작 코드
}

int sum(int a, int b) {
	return a + b;
}

// void : 값을 리턴하지 않음
void set(int a) {
	val = a;
}
```

- Argument와 Parameter

  - Argument(전달인자) : 함수와 메서드에서의 입력 값 → 호출될 때 전달되는 실제 값
  - Parameter(매개변수) : 함수와 메서드의 입력 변수 명 → 선언의 변수 목록

  ```dart
  int sum(int a, int b) { // Parameter
  	return a + b;
  }

  ...

  sum(1, 2) // Argument
  ```

---

## Class

- 일종의 객체(Object)를 만들기 위한 Template
- Property(== Field) : 클래스 내부에 선언된 데이터(변수 / 상수 등)
- Method : 클래스 내부에 선언 된 기능(함수)
- Constructor(생성자) : 클래스 인스턴스를 생성할 때 사용되는 코드, 생성 시 특정 작업을 지시 하는 등의 활용

  ```dart
  class Product(
  	int id = 0; // Property
  	String name = 'name'; // Property

  	Product(); // Default Constructor
  	Product.set(this.id, this.name) // Named Constructor
  )

  ...

  Product product1 = Product(); // Default Constructor
  Product product2 = Product.set(1, "T-Shirt"); // Named Constructor

  print(product1); // id = 0; name = name
  print(product2): // id = 1; name = T-Shirt
  ```

- Getter와 Setter

  - Getter : Property를 Read-Only로 사용할 때
  - Setter : Property를 제한된 범위 내에서 값을 지정해줄때, Parameter의 타입은 본래 타입과 같게 지정

  ```dart
  class Product {
  	// Private Variable이라 product.dart 이외에서 접근 불가능
  	String _name;
  	int _price;

  	// ... 생성자

  // Getter
  // returnType get 변수이름 => private 변수 이름
  String get name => _name;
  // print(product.name)

  // Setter
  set price(int value) {
  	if (value < 0) {
  		print("0원보다 적은 가격을 입력할 수 없습니다.");
  		} else _price = value;
  }
  // product.price = 1;

  // 함수 형태의 Getter
  String getName() {
  	return _name;
  }
  // print(product.getName());

  // 함수 형태의 Setter
  void setPrice(int price) {
  	_price = price;
  }
  // product.setPrice(1);
  ```

---

## 분기문

- 프로그램이 특정한 상황에 동작을 처리할지 / 처리하지 않고 넘길지를 결정
- if - else if - else문

  ```dart
  // if (조건식) {
  //   조건식이 참일 경우 실행 할 코드
  // } else if (조건식2) {
  //   앞선 조건식들이 거짓이지만, 조건식2가 참일 경우 실행할 코드
  // } else {
  //    모든 조건식이 거짓일 경우 실행 할 코드
  // }

  int i = 0;

  if (i == 0) {
  	// i가 0일 때 동작
  } else if (i == 1) {
  	// i가 1일 때 동작
  } else if (i == 5) {
  	// i가 5일 때 동작
  } else {
  	// i가 0, 1, 5이 아닐 때 동작
  }
  ```

- switch-case문

  ```dart
  int i = 4

  switch(i) {
  	case 4:
  		// if (i == 4)
  		// 비교 대상이 1일 경우 실행할 코드
  	case > 5:
  		// else if (i > 5)
  		// ...
  	default:
      // else
  		// 비교 대상이 앞선 조건문들에 속하지 않는 경우
  ```

---

## 반복문

- 특정한 코드의 반복을 지시할 때 사용
- for문

  ```dart
  // for(기준 변수; 조건식; 가변치) {
  // 조건식이 참일 때 실행될 반복문
  // }

  for (int i = 0; i < 10; i++) {
  	print(i); // i가 0, 1, 2 .. 순으로 증가하다가 i가 10이 될 때 반복문 정지
  }

  for (int i = 0; i < 10; i++) {
  	print(i);

  	if (i == 5) break; // i가 5일 경우, break를 통해 반복문을 종료
  }

  for (int i = 0; i < 10; i++) {
  	if (i == 5) continue; // i가 5일 경우, continue가 실행되서 print(5)는 생략

  	..
  	print(i);
  	.. 생략
  }
  ```

- for in 문

  ```dart
  // for(단일 변수 in Collection(List, Set, Map) {}
  // Collection내의 요소 갯수 만큼 반복, 단일 변수엔 Collection의 값이 들어감

  List<int> numList = [1, 3, 6, 10];

  for (int num in numList) {
  	// numList의 요소 갯수(length)만큼 반복
  	print(num);
  }

  // 동일한 동작을 for문으로 작성시
  for (int i = 0; i < numList.length; i++) {
  	print(numList[i]);
  }
  ```

- while문

  ```dart
  // while(조건식) {
  // 조건식이 참일 때 실행될 반복문
  // }

  int i = 0;

  while (i < 10) {
  	print(i); // 0, 1, 2 ..., 9
  	i++;
  }

  // 무한 반복문
  while(true) {
  	// 조건식이 항상 참이여서 무한 반복 실행
  }
  ```

---

## 메모장

- Compile Time Error
  - 실행 파일을 만드는 과정(컴파일)에서 오류를 검출
  - 실행 파일을 만들때 오류가 출력됨
- Runtime Error

  - 프로그램이 정상적으로 컴파일 되어 실행 중인 과정에 오류가 나는 문제
  - 의도치 않은 예외 상황으로 인하여 발생하는 오류로, 발견하기 어려워 Production에서 치명적인 문제를 일으킬 수 있음

- Variable Scope

  - 특정 변수를 접근할 수 있는 범위

  ```dart
  // 아래 for문의 i는 for문 안에서만
  for (int i = 0; i < 10; i++) {
    print(i); // i가 0, 1, 2 .. 순으로 증가하다가 i가 10이 될 때 반복문 정지
  }
  print(i); <-- 오류

  ...

  void main() {
    int i = 0;
    for (i; i < 10; i++) {
      print(i); // i가 0, 1, 2 .. 순으로 증가하다가 i가 10이 될 때 반복문 정지
    }
  	print(i) <-- 1, 2, 3, ...
  }

  print(i) <-- 오류
  ```
