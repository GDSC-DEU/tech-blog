---
layout: post
title: "오픈소스 클라우드 운영체제 OpenStack 소개"
date: 2023-10-30 19:40:00 +0900
categories: [Cloud]
author: 정예준
---

![OpenStack Overview](https://object-storage-ca-ymq-1.vexxhost.net/swift/v1/6e4619c416ff4bd19e1c087f27a43eea/www-assets-prod/learn/software-overview-diagram-new.svg)
## 클라우드와 OpenStack
클라우드(클라우드 컴퓨팅)은 인터넷과 연결된 서버 자원을 직접 관리하는 온프레미스 방식이 아닌 주문만 하면 컴퓨팅 자원을 바로 제공받을 수 있는 서비스를 의미 합니다.

보통 클라우드라고 말하면 스토리지 서비스(구글 드라이브, DropBox, 등)을 떠올리지만 이 글에서 말하는 클라우드는 인터넷과 연결된 컴퓨팅 자원(CPU, RAM, 저장장치, 등)을 말합니다.

OpenStack은 데이터센터([IDC: Internet Data Center](https://ko.wikipedia.org/wiki/%EB%8D%B0%EC%9D%B4%ED%84%B0_%EC%84%BC%ED%84%B0))의 방대한 컴퓨팅, 저장장치, 네트워크 자원을 관리하고 주어진 권한에 따라 API를 이용하여 자원을 제공하는 클라우드 운영체제 입니다. 쉽게 말하자면 AWS나 Google Cloud, Microsoft Azure와 같은 클라우드 환경을 오픈소스로 구축할 수 있는 프로젝트 입니다.

## OpenStack Services
![OpenStack Map](https://object-storage-ca-ymq-1.vexxhost.net/swift/v1/6e4619c416ff4bd19e1c087f27a43eea/www-assets-prod/openstack-map-v20230501.png)

OpenStack은 여러 서비스들을 합쳐서 부르는 말입니다. OpenStack에는 웹 환경에서 클라우드를 관리할 수 있게 해주는 Horizon, 가상환경을 통해서 사용자별 독립된 서버 경험을 제공하는 Nova, 운영체제 이미지를 저장하는 Glance와 가상환경의 저장장치 역할을 하는 Cinder 그리고 네트워킹 서비스를 제공하는 Neutron과 서비스 전체의 보안을 책임지는 인증 서비스 Keystone 이외에도 클라우드를 위한 다양한 서비스들이 있습니다.

[OpenStack 서비스를 자세히 알려볼려면 여기를 클릭하세요](https://www.openstack.org/software/project-navigator/openstack-components/#openstack-services)

## 오픈소스 정신과 OpenInfra 재단
![OpenInfra Logo](https://openinfra.dev/img/openinfra-logo.jpeg)

[OpenInfra](https://openinfra.dev/about/) 재단은 OpenStack 프로젝트를 관리하기 위해 2012년 설립되어 현재 OpenInfra의 모습이 되었습니다. OpenInfra 재단에서는 오픈소스 문화를 중요하게 여기며 "4가지 개방" 이라는 원칙에 따라 운영됩니다.

["4가지 개방"](https://openinfra.dev/four-opens/)은 "오픈소스", "개방형 디자인", "개방형 개발", "오픈 커뮤니티"를 의미합니다. 오랜기간 이러한 원칙을 고수하면서 OpenStack을 비롯한 다양한 오픈소스 프로젝트가 OpenInfra와 함께 운영되고 있습니다.

## DevStack으로 OpenStack에 입문하기
![DevStack Logo](https://docs.openstack.org/devstack/latest/_images/logo-blue.png)

OpenStack은 초심자에게는 장벽이 높은 프로젝트 입니다.

만약 OpenStack에 입문 하실려고 한다면 DevStack을 사용해서 개발용 OpenStack을 설치하는걸 추천합니다.

[DevStack](https://docs.openstack.org/devstack/latest/)은 OpenStack 개발과 기능 테스트를 위한 자동 설치 스크립트 입니다. 원래 여러 서버에 적절하게 설치되어야 하는 OpenStack의 서비스들을 하나의 서버에 필요한 모든 서비스를 설치할 수 있습니다.

[웹 사이트를 방문하면](https://docs.openstack.org/devstack/latest/) DevStack을 설치하는 방법이 정리되어 있습니다. DevStack을 사용해서 설치하면 완벽하게 삭제하는 것이 어려움으로 일반적으로 가상머신을 만들어 실습 하는 편이 좋습니다.

## 마무리
오늘은 간단하게 OpenStack을 소개하는 글을 작성해 보았습니다. 깊이있게 다루지는 않았으나 평소 클라우드에 대해 관심이 있으셨다면 DevStack을 통해 한번 공부해 보시는 것도 추천드립니다.

GDSC-DEU의 Cloud 스터디 그룹에서는 클라우드와 OpenStack에 대해서 공부하고 자료를 정리하고 있습니다.

## 참고자료
- [https://www.openstack.org/](https://www.openstack.org/)
- [https://devstack.org/](https://devstack.org/)
- [https://openinfra.dev/](https://openinfra.dev/)
