import 'package:flutter/material.dart';
import 'package:task3/core/network/cache_service.dart';
import 'package:task3/core/network/dio_service.dart';
import 'package:task3/features/home/presentation/view/home_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioService.init();
  CacheService.init();
  runApp(const Task3());
}

class Task3 extends StatelessWidget {
  const Task3({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
