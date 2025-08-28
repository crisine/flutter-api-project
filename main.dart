import 'package:flutter/material.dart';
import 'package:flutter_api_project/features/random_image/presentation/pages/random_image_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: ApiApp()));
}

class ApiApp extends StatelessWidget {
  const ApiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: RandomImagePage());
  }
}
