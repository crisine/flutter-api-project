# Random Image App
Lorem Picsum 웹사이트 API 를 사용해 Binary 데이터를 받아 이미지로 표시하는 간단한 싱글 페이지 앱입니다.
사내 온보딩을 위해서 제작되었습니다. 허술한 부분이 많을 수 있습니다.

## 아키텍처
- Clean Architecture + MVVM
- 해당 앱은 간단한 구조를 가지고 있어 domain 레이어 및 dto 생략

## 사용된 패키지
- HTTP 통신 : Retrofit, Dio
- 상태관리 : Riverpod
- 기타 : Freezed

# 목표
우선 사용된 패키지를 참고해서, 이미지 Fetch 버튼을 눌렀을 때 어떤 흐름으로 데이터를 가지러 갔다 오는지 보시고..

- [ ] HTTP 패키지를 놔두고 Dio 패키지를 사용하는 이유
- [ ] Retrofit 패키지를 사용하면 Dio 패키지 단독 사용보다 좋은 이유
- [ ] Clean Architecture 를 준수하면 좋은 이유 (구체적으로 가면 Repository 패턴이 존재하는 이유 등)
- [ ] 지금은 State 가 작지만, 한 화면에 여러 값들이 공존해야 하는 경우 하나의 State 가 비대해지면 생기는 문제 (예. 원치 않은 리빌드)

상기 내용 등을 알아보시면 훨씬 도움되시리라 생각합니다.
