---
layout: post
title: "React Native란?"
date: 2023-11-11 11:30:00 +0900
categories: [Frontend]
author: 박상현
---
<div style="text-align: center;">
  <img src="https://raw.githubusercontent.com/GDSC-DEU/tech-blog/main/assets/img/2023-11-11-What-Is-React-Native/page-cover.png" alt="Page Cover" style="height: 300px;">
</div>

# React Native란?
오늘날에는 모바일 앱을 개발할 때 Android와 iOS를 동시에 개발할 수 있는 기술이 많이 사용되고 있습니다. 대표적으로 React Native와 Flutter가 있는데 여기에서는 React Native에 대해서 알아보겠습니다.

## React Native 소개
React Native는 React와 앱 플랫폼의 네이티브 기능을 사용하여 Android와 iOS 애플리케이션을 만들기 위한 오픈 소스 프레임워크입니다. React Native를 사용하면 JavaScript를 통해 플랫폼의 API에 접근하고, React Component(컴포넌트)를 사용하여 UI의 모양과 동작을 묘사할 수 있습니다.

## Views와 모바일 개발
View는 화면에서 텍스트, 이미지를 표시하거나 사용자 입력에 반응할 수 있는 작은 사각형으로, UI의 기본적인 구성 요소입니다.
<div style="text-align: center;">
  <img src="https://raw.githubusercontent.com/GDSC-DEU/tech-blog/main/assets/img/2023-11-11-What-Is-React-Native/react-native-view.png" alt="Page Cover" style="height: 300px;">
</div>
예를 들어서 텍스트 한 줄이나 버튼 모두 View의 한 종류입니다. ViewGroup과 같이 다른 View를 포함하는 View도 있습니다.


## Native Components
Android와 iOS 앱을 개발할 때 각자 사용하는 언어가 다릅니다. View를 생성할 때 Android는 Kotlin(코틀린)이나 Java를 사용하고, iOS 개발에서는 Swift나 Objective-C를 사용합니다.
React Native를 사용한다면, React Component를 사용하여 JavaScript로 View를 작성/호출합니다. 그리고 React Native가 이러한 Component에 대응하는 Android와 iOS의 View를 생성합니다.

## Core Components
React Native에서 사용할 수 있는 여러 Core Component가 있습니다. 주로 다음 Component를 사용합니다.

- `<View>` : flexbox, 스타일, 터치 제어 등의 레이아웃을 지원하는 컨테이너입니다.
- `<Text>` : 텍스트 문자를 표시하고 스타일을 지정합니다.
- `<Image>` : 다양한 유형의 이미지를 표시합니다.
- `<ScrollView>` : 여러 component와 view를 포함할 수 있는 스크롤 컨테이너입니다.
- `<TextInput>` : 사용자가 텍스트를 입력할 수 있는 컨테이너 입니다.

아래 코드를 확인하고 실행 해 보세요.

<iframe width="100%" height="700" src="https://snack.expo.dev/FrgflBgIE" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## 바로 시작해볼까?
React Native를 시작하기에 앞서 React에 대해서 알고 계신가요?
React Native는 React에서 사용하는 Component와 같은 구조를 사용하기 때문에, React의 지식 없이 React Native를 바로 학습하기는 어렵습니다.
<div style="text-align: center;">
  <img src="https://raw.githubusercontent.com/GDSC-DEU/tech-blog/main/assets/img/2023-11-11-What-Is-React-Native/components.png" alt="Page Cover" style="height: 300px;">
</div>
위 사진 처럼 React Native는 React 안에 포함되어 있습니다.
만약 React에 대해 잘 알지 못한다면 React 먼저 공부하고 React Native를 사용하는 것을 추천합니다.

---

**Reference**
- [React Native docs](https://reactnative.dev/docs/getting-started)
- [visual-craft](https://www.visual-craft.com/blog/react-native-for-building-hybrid-mobile-apps/)

<br>
작성자 : 박상현(thelight0804)