---
layout: post
title: "JavaScript 시작하기"
date: 2023-11-12 21:30:00 +0900
categories: [JavaScript]
author: 박소은
---

# JavaScript 시작하기

1. 자바스크립트는 **사용자와 상호작용**을 하는 언어이다.
즉, **동적**이다 (HTML은 정적이다)

1. 웹브라우저는 한번 화면에 출력되면 자기 자신을 바꿀 수 없다.  
그러나 JavaScript를 이용한다면 JavaScript 코드에 따라서 변화가 일어난다.
→ 이것이 **'JavaScript가 HTML을 제어하는 언어다’** 는 정의를 내리는 이유다.

---

#### 1. `<script>`와 `</script>`

```jsx
<body>
    <h1>JavaScript</h1>
    <script>
    document.write(1+1);
    </script>
    <h1>html</h1>
    1+1
</body>
```

**`<script>`** 태그는 안쪽에 **JavaScript**가 오도록 약속되어있다.
웹브라우저는 **`<script>`** 안에 있는 코드를 **JavaScript**로 해석한다.

그렇다면 JavaScript 와 HTML로 작성한 것은 무슨 차이가 있는가?
<img src="https://luxuriant-grapple-a75.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2Ff85c45c8-aa3f-4984-ad74-ece7aa08b1b1%2F5498f1ef-2fa6-4426-8f68-7c9da70f5c61%2FUntitled.png?table=block&id=42d3400d-93f4-42af-9144-460e761d2ae1&spaceId=f85c45c8-aa3f-4984-ad74-ece7aa08b1b1&width=880&userId=&cache=v2" width="350">

분명 둘 다 ‘1+1'을 적어주었지만 HTML에서는 문자 그대로, JavaScript에서는 ‘1+1’이 계산된 값인 2가 출력이 된다.

이것은 JavaScript은 동적, HTMl은 정적이라는 것을 잘 보여주는 예시이다.


#### 2. `<input>`
```jsx
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <input type="button" value="hi" onclick="alert('hi')">
</body>
</html>
```

- `type="button"`은 웹페이지에 **버튼**을 만들어 줄 수 있다. 
`value`는 버튼의 **이름**을 지정해줄 수 있다.

**onclick**은?
- **onclick**의 속성값으로는 반드시 JavaScript가 와야한다.
- **onclick**의 속성의 속성 값은 웹브라우저가 기억하고 있다가 **onclick**의 속성이 위치하고 있는 태그를 클릭했을 때 JavaScript 코드를 JavaScript 문법에 따라 해석해 거기 적혀 있는대로 동작할 것이다.

즉, 우리가 hi의 버튼을 클릭한다면 onclick안에 적혀있는 JavaScript 코드에 따라 실행된다.

```jsx
<input type="button" value="버튼을 만들었다!" onclick="alert('버튼을 눌렀다!')">
```
<input type="button" value="버튼을 만들었다!" onclick="alert('버튼을 눌렀다!')">

이와 같이 웹브라우저 위에서 일어나는 일들을 event(이벤트)라고 한다.

---

### 이벤트(event)
- 무수히 많은 이벤트들이 존재
- 이벤트들로 사용자들과 상호작용하는 코드를 만들 수 있음

#### 1. text

text는 문자를 입력할 수 있는 상자를 만들어 준다.
``` jsx
<body>
    <input type="text">
</body>
```
<input type="text">

#### 2. onchange
‘내용이 변했을 때’라는 이벤트를 체크한다.
text 속성에서 시작할 때와 비교해 변화가 있다면 이벤트가 발생한다.
```jsx
<body>
    <input type="text" onchange="alert('changed')">
</body>
```
<body>
	   <input type="text" onchange="alert('changed')">
</body>


#### 3.onkeydown
text 속성안에서 down key를 누르면 이벤트가 발생한다.
```jsx
<body>
    <input type="text" onkeydown="alert('key down!!')">
</body>
```
<body>
		<input type="text" onkeydown="alert('key down!!')">
</body>


---

### Console

 ✔️ Console을 통해서 JavaScript 코드를 실행하게 한다면 해당 웹페이지를 대상으로 JavaScript 코드가 실행된다.

먼저, Console 화면을 열어보자.
웹페이지의 빈 공간에 우클릭을 하면 아래와 같은 창이 뜬다.

<img src="https://luxuriant-grapple-a75.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2Ff85c45c8-aa3f-4984-ad74-ece7aa08b1b1%2Fdeec4d7e-7d11-4211-9465-52b2c61d994e%2FUntitled.png?table=block&id=952a8990-21bb-4014-88eb-e387a6297f19&spaceId=f85c45c8-aa3f-4984-ad74-ece7aa08b1b1&width=580&userId=&cache=v2" width=350>

맨 마지막의 ‘검사’를 눌러준다.

<img src="https://luxuriant-grapple-a75.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2Ff85c45c8-aa3f-4984-ad74-ece7aa08b1b1%2F33cee7a9-74ed-4f29-b0e9-69f3e59d7683%2FUntitled.png?table=block&id=1420aef2-b6d8-4957-9fec-1908c001ff78&spaceId=f85c45c8-aa3f-4984-ad74-ece7aa08b1b1&width=670&userId=&cache=v2" width=350>


<img src="https://luxuriant-grapple-a75.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2Ff85c45c8-aa3f-4984-ad74-ece7aa08b1b1%2F1dac060b-059e-4cb5-993b-f017483f9fd4%2FUntitled.png?table=block&id=f6f97c1f-e4c8-43f6-a2ec-9c8729462a66&spaceId=f85c45c8-aa3f-4984-ad74-ece7aa08b1b1&width=770&userId=&cache=v2" width=350>


이곳에서 우리는 나의 필요에 따라서 코드를 작성하여 실행할 수 있다.
