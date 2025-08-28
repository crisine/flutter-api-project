import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_api_project/features/random_image/presentation/viewmodels/random_image_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RandomImagePage extends ConsumerStatefulWidget {
  const RandomImagePage({super.key});

  @override
  ConsumerState<RandomImagePage> createState() => _RandomImagePageState();
}

class _RandomImagePageState extends ConsumerState<RandomImagePage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(randomImageViewModelProvider);

    return Scaffold(
      appBar: AppBar(title: Text('랜덤 이미지 가져오기 앱')),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                width: 300,
                height: 300,
                child: state.isLoading
                    ? CircularProgressIndicator()
                    : _buildRandomImage(state.imageBinaryData),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildRandomImage(Uint8List? imageBinaryData) {
    if (imageBinaryData != null) {
      return Image.memory(imageBinaryData);
    } else {
      return Center(child: Text('아래 버튼을 눌러 이미지를 가져오세요.'));
    }
  }

  Widget _buildBottomNavigationBar() {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 32),
      child: FloatingActionButton(
        onPressed: () =>
            ref.read(randomImageViewModelProvider.notifier).fetchRandomImage(),
        child: Text('이미지 가져오기'),
      ),
    );
  }
}
