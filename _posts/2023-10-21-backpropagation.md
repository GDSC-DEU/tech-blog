---
layout: post
title: "인공지능 - Backpropagation 기법"
date: 2023-10-21 15:30:00 +0900
categories: [AI]
author: 장현제
---

## Backpropagation이란?

![](./assets/img/AI/[ai]graph.png)

위 그래프에서 각각의 매개변수로 함수 f에 대한 값을 도출해 내는 과정을 Forward Pass, 순전파라고 얘기한다. 이때 우리가 하고 싶은 건 Input에 대한 Gradient를 구하는 것, 즉 Input이 마지막 단에 어느 정도 영향을 미치는가?를 구해야 한다.

## 간단한 순전파, 역전파의 연산 과정

![](./assets/img/AI/function.png)

위와 같이 덧셈 연산에 대한 함수는 q, 곱셈 연산에 대한 함수는 f로 정의하고 시작하자.

### q함수와 z함수의 연산?

![](./assets/img/AI/identify.png) | ![](./assets/img/AI/dfdz.png) | ![](./assets/img/AI/dfdq.png)

위의 이미지들에서, 제일 왼쪽 이미지는 df/df, 즉 자기 자신에 대해 미분을 하는 것이기 때문에 identify function이 되고 그 값은 1이다.
그 다음으로는 df/dz인데 이는 q = x + y 이므로, 3임을 알 수 있다.
이때 3이라는 값의 의미는 z의 값을 임의의 숫자 h만큼 증가 시키게 되면 f의 값은 3h만큼 증가한다는 뜻이다. 즉, 3배만큼 영향력을 주고 있다고 생각하면 된다.
마지막 이미지에서 df/dq를 구하는데 이는 z이므로 -4이다.

### chain rule

![](./assets/img/AI/dfdy.png) | ![](./assets/img/AI/dfdx.png)

이제 구해야 할 것들은 df/dx와 df/dy인데, 이는 Chain rule(연쇄법칙 or 합성 함수의 미분)을 이용하여 구할 수 있다.
이때 연쇄 법칙에서 dq/dy와 같은 값들은 우리가 구하려고 하는 직접적인 gradient 값이기 때문에 local gradient라고 하고, df/dq 같은 값들은 global gradient라고 한다.

## 정리

![](./assets/img/AI/[ai]backward_pass.png)

 forward pass를 통해 구해진 Local Gradient와, Backward pass를 통해 Global Gradient를 구한다.
 Gradient를 구하는 이유는 Input Data가 Output Data에 영향을 미치는 정도를 계산하기 위함.
 인공지능은 그것을 메모리에 저장하는 방식으로 학습 과정의 가중치를 저장한다.

![](./assets/img/AI/[ai]flow.png)

 - 덧셈 연산의 역전파는 그대로를,
 - 곱셈 연산의 역전파는 서로 바꾼 값을,
 - Max 연산의 역전파는 큰 값의 경우 1, 작은 값의 경우는 0으로 만들어서 전달한다.
 - Forward Pass 연산 과정에서 Local Gradient를 미리 계산하여 저장한다.
 - Backward Pass 연산에서 Global Gradient를 계산한다.
 - 두 값을 곱하여 최종 gradient를 얻는데, 이때 chain rule이 발생한다.