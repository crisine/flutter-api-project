import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'image_api_service.g.dart';

@RestApi(baseUrl: "https://picsum.photos") // 랜덤 이미지 보내주는 사이트
abstract class ImageApiService {
  factory ImageApiService(Dio dio, {String baseUrl}) = _ImageApiService;

  @GET("/300") // 해상도 설정. 300 -> 300x300 사이즈, 400 -> 400x400 사이즈
  @DioResponseType(ResponseType.bytes) // 이미지가 바이너리 형태로 넘어옴
  Future<List<int>> getRandomImage();
}
