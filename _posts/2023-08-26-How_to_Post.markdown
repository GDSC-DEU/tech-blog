---
layout: post
title: "포스팅 하는 방법"
date: 2023-08-26 23:58:13 +0900
categories: [infomation]
author: 김남주
---

## 글 작성 하는 방법

1. `_posts` 폴더에 `yyyy-mm-dd-제목.md` 형식으로 파일을 생성합니다.
2. 파일 상단에 아래와 같은 형식으로 작성합니다.

   ```markdown
   ---
   layout: post
   title: "글 작성 하는 방법"
   date: 2023-08-26 23:58:13 +0900
   categories: infomation
   author: 김남주
   ---
   ```

3. 마크다운 문법으로 글을 작성합니다.

## 이미지 첨부 하는 방법

1. `assets/img` 폴더에 이미지를 업로드 합니다.
2. 아래와 같은 형식으로 이미지를 첨부합니다.

   - 마크다운 문법

   ```markdown
   ![이미지 설명](/assets/img/이미지 파일명)
   ```

   - HTML 문법

   ```html
   a
   ```

## 카테고리 추가 하는 방법

1. `_data` 폴더에 `categories.yml` 파일을 생성합니다.
2. 아래와 같은 형식으로 카테고리를 추가합니다.

   ```yaml
   - slug: [카테고리 이름]
     name: [카테고리 이름]
   ```

## 태그 추가 하는 방법

1. `_data` 폴더에 `tags.yml` 파일을 생성합니다.
2. 아래와 같은 형식으로 태그를 추가합니다.

   ```yaml
   - slug: [태그 이름]
     name: [태그 이름]
   ```

## 참고

- [Jekyll Docs](https://jekyllrb.com/docs/)

- [Jekyll Themes](https://jekyllthemes.io/)
