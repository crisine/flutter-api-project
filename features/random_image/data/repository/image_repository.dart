import 'dart:typed_data';

import 'package:flutter_api_project/features/random_image/data/datasources/image_api_service.dart';

class ImageRepository {
  final ImageApiService _apiService; // API 호출을 위한 서비스 객체

  /// 외부에서 주입받도록 만들어졌는데, 이걸 Dependency Injection 이라고 합니다.
  /// 이렇게 하면 연결 엔드포인트가 서버 1, 서버 2 이렇게 있을 때 맘대로 스위칭 가능해요.
  ImageRepository(this._apiService);

  Future<Uint8List> fetchRandomImage() async {
    final response = await _apiService.getRandomImage();
    return Uint8List.fromList(response);
  }
}
