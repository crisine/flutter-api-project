import 'dart:typed_data';

import 'package:flutter_api_project/features/random_image/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'random_image_view_model.freezed.dart';
part 'random_image_view_model.g.dart';

@freezed
abstract class RandomImageViewModelState with _$RandomImageViewModelState {
  const factory RandomImageViewModelState({
    Uint8List? imageBinaryData, // 랜덤 이미지
    @Default(0) int fetchedTimes, // 몇 번 가져왔는지
    @Default(false) bool isLoading, // 이미지 로딩중일때 활성
    String? snackbarMessage, // 이미지 로드 성공/실패시 보여줄 스낵바 메시지
  }) = _RandomImagePageState;
}

@riverpod
class RandomImageViewModel extends _$RandomImageViewModel {
  // 이미지를 가져오기 위한 Repository 를 여기서 부릅니다
  late final _repository = ref.read(imageRepositoryProvider);

  @override
  RandomImageViewModelState build() {
    return const RandomImageViewModelState();
  }

  Future<void> fetchRandomImage() async {
    // 바이너리 이미지를 먼저 서버에서 땡겨와야 합니다.
    // 우선 지금 이미지 땡겨올거니까 로딩중이라고 상태를 변경합니다.
    state = state.copyWith(isLoading: true);

    try {
      // 이미지를 가져오는데, 네트워크 통신이 일어나는 동안 다른 코드가 실행되면 안 되니까 await 을 걸어줍니다.
      // 롤로 따지면 존야를 걸어서 여기서 멈추는 셈입니다.
      final imageBinaryData = await _repository.fetchRandomImage();

      // 이미지 로딩이 성공적으로 끝나면, 상태 객체를 변경해줄겁니다.
      state = state.copyWith(
        imageBinaryData: imageBinaryData,
        fetchedTimes: state.fetchedTimes + 1,
        isLoading: false,
        snackbarMessage: '성공적으로 이미지를 가져왔습니다.',
      );
    } catch (e) {
      state = state.copyWith(
        snackbarMessage: '이미지 로딩에 실패했습니다. $e',
        isLoading: false,
      );
    }
  }
}
