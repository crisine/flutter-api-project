import 'package:dio/dio.dart';
import 'package:flutter_api_project/features/random_image/data/datasources/image_api_service.dart';
import 'package:flutter_api_project/features/random_image/data/repository/image_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 1. 우선 네트워크 통신용 패키지인 Dio 를 불러주시고
final dioProvider = Provider<Dio>((ref) => Dio());

// 2. Retrofit 은 Dio 를 랩핑해서 사용하기 때문에, 실제 통신이 진행되는 곳에 Dio 를 넘겨주세요
final imageApiServiceProvider = Provider<ImageApiService>((ref) {
  return ImageApiService(ref.watch(dioProvider));
});

// 3. 그리고 Repository 는 어디로 이미지를 호출하러 갔다오는지 모르게 DI를 받습니다. (약한 의존성)
// 만약 특정 apiService 객체만 받게 되어있었으면, 서버 호출 구조나 주소가 바뀌었을 경우
// /datasource 의 apiService + /repository repository 까지 둘다 수정해야 합니다.
final imageRepositoryProvider = Provider<ImageRepository>((ref) {
  return ImageRepository(ref.watch(imageApiServiceProvider));
});
