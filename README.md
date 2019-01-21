# 1. Introduction

블록체인의 세계에 오신 것을 환영합니다! 블록체인은 비트코인이 전자통화의 대표주자로 안착하기까지 핵심적인 역할을 담당해 왔습니다. 현재 블록체인 기술은 비트코인과는 별도로 최고의 데이터 안전성과 신뢰성이 요구되는 금융, 의료, 관공서 등의 분야에서 활용되거나 검토 중에 있으며, 블록체인을 기반으로 그동안 존재하지 않던 서비스들이나 참신한 아이디어로 무장한 스타트업들이 계속해서 생겨나고 있습니다.

만약 블록체인 기술을 활용할 만한 획기적인 아이디어가 있어도, 우선 블록체인과 비트코인에 대해 이해하고 공부하기 위한 많은 노력이 선행되어야 했습니다. 그리고 블록체인은 원래 범용적인 기술이 아니라 비트코인을 지탱하기 위해 만들어진 구조이므로 이를 응용하기 위해서는 추가적인 노력을 들여 기술적 장벽을 넘어야 했습니다.

코인스택은 이러한 어려움 없이 여러분의 서비스와 블록체인을 연결해 주는 징검다리 역할을 하기 위해 만들어졌습니다. 즉, 코인스택은 간편하게 블록체인 기반 서비스를 개발할 수 있도록 도와주는 플랫폼입니다. 실제로 블로코에서 서비스 중인 [클라우드스탬프](https://www.cloudstamp.io)는 모두 코인스택 기반으로 개발되었으며, 현재 제1금융권 은행 및 대형 카드사를 비롯한 대기업, 한국거래소, 각종 스타트업들이 블록체인 기반 서비스를 제공하기 위해 코인스택을 사용하고 있습니다. 블로코가 무료로 제공하고 있는 클라우드 기반 코인스택 서비스는 과제를 수행하는 학생들, 개인 개발자들이 편리하게 이용하고 있습니다.

블록체인에 관심은 많은데 아직 잘 모르신다고요? 그렇다면 이 문서와 함께 코인스택 홈페이지에서 제공하는 블록체인 [소개](https://coinstack.zendesk.com/hc/ko/articles/222183287)와 [튜토리얼](https://coinstack.zendesk.com/hc/ko/sections/200997727) 등도 살펴보시기 바랍니다. 하지만 블록체인 전문가가 되지 않더라도 코인스택과 함께라면 얼마든지 블록체인 기반 서비스를 만들 수 있다는 사실을 잊지 마세요!

코인스택은 많은 개발자들에게 친숙한 프로그래밍 언어인 자바, 자바스크립트, HTML5 기반 SDK를 제공하며, HTML5 기반의 [웹플레이그라운](https://playground.blocko.io/) 를 통하여 편리한 개발 환경 또한 제공하고 있습니다.

지금 당장 시작해 보세요! 그리고 필요한 API나 기능이 있다면 [헬프데스크](https://coinstack.zendesk.com/hc/requests/new) 또는 [개발자 커뮤니티](https://coinstack.zendesk.com/hc/ko/community/topics)에 제안해 주시길 바랍니다.

## 문서의 구성

이 문서에서는 코인스택 개발과 관련된 모든 것을 얻을 수 있습니다. Object, API 등의 각 항목마다 우측 상단의 탭을 통해 코인스택에서 공식적으로 제공하는 모든 프로그래밍 언어별 예제를 편리하게 참조할 수 있습니다.

### 각 장의 소개

#### Quick Start Guide

코인스택 환경설정, 설치, 인증방법 등을 간략히 소개합니다.

#### Getting Started

코인스택 클라이언트의 기본적인 사용 예제를 살펴볼 수 있습니다.

#### Authentication

코인스택 클라이언트의 인증 및 권한 획득 방식과 절차를 상세히 소개합니다.

#### Coinstack and Public Bitcoin Blockchain

비트코인 블록체인을 기반으로 하는 코인스택의 기본 구성요소 및 코인스택에서 제공하는 개념과 기능을 소개합니다.

#### Coinstack Stamping

코인스택에서 제공하는 Document Stamping 기능에 대해 소개합니다.

#### Coinstack Multisig

코인스택에서 제공하는 멀티 시그니처 기능에 대해 소개합니다.

#### Coinstack Open Assets

코인스택에서 제공하는 Open Asset 프로토콜 호환 기능에 대해 소개합니다.

#### API Reference

코인스택 API에서 객체로 취급하는 데이터 모델 Object와 코인스택 API에 대한 상세한 설명 및 사용 방법, 프로그래밍 언어별 예제를 참조할 수 있습니다.

## 프로그래밍 언어 지원

코인스택의 모든 기능은 REST API로 제공되며, 아래 환경에서 SDK를 설치하여 사용할 수 있습니다.

| 플랫폼 | 다운로드 |
| :--- | :--- |
| Java | [Maven Repository](http://mvnrepository.com/artifact/io.blocko/coinstack) |
| Node.js | [NPM JS](https://www.npmjs.com/package/coinstack-sdk-js) |
| Meteor | [ATMOSPHERE](https://atmospherejs.com/shepelt/coinstack) |
| HTML5 | [Coinstack CDN](https://cdnjs.coinstacks.io/coinstack-1.1.17.min.js) |

## Copyright

코인스택과 본 매뉴얼에 대한 모든 저작권은 ㈜블로코에 있습니다.

## Company Info.

주식회사 블로코 \(www.blocko.io\)

경기 성남시 분당구 성남대로 331번길 8\(정자동\) 킨스타워 16층

## Contact

* 기술지원: 031-8016-6253
* 팩스: 050-8054-6253
* E-mail: support@blocko.io

## 매뉴얼 정보

* 소프트웨어 버전: 코인스택 3.5
* 매뉴얼 버전: 1.0.0
* 발행일: 2018-04-01

