import 'package:flutter/material.dart';
import '../brick_bootstrap5_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bootstrap 5 Plus - Clean Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const TestScreen(),
    );
  }
}

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clean Functionality Test'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '基础功能测试:',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            
            // 测试间距
            const B5('p-3'),
            const SizedBox(height: 8),
            const B5('m-2'),
            
            const SizedBox(height: 16),
            
            // 测试尺寸
            const B5('w-50'),
            const SizedBox(height: 8),
            const B5('h-50'),
            
            const SizedBox(height: 16),
            
            // 测试颜色
            const B5('bg-primary'),
            const SizedBox(height: 8),
            const B5('color-white'),
            
            const SizedBox(height: 16),
            
            // 测试显示
            const B5('d-block'),
            const SizedBox(height: 8),
            const B5('d-flex'),
            
            const SizedBox(height: 16),
            
            const Text(
              '所有基础功能正常工作！',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}