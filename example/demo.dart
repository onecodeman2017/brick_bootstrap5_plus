import 'package:flutter/material.dart';
import 'package:brick_bootstrap5_plus/brick_bootstrap5_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bootstrap 5 Plus Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BootstrapDemo(),
    );
  }
}

class BootstrapDemo extends StatelessWidget {
  const BootstrapDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bootstrap 5 Plus Demo'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 基础栅格布局示例
            _buildGridExample(),
            const SizedBox(height: 20),
            // 间距示例
            _buildSpacingExample(),
            const SizedBox(height: 20),
            // 颜色示例
            _buildColorExample(),
            const SizedBox(height: 20),
            // 响应式示例
            _buildResponsiveExample(),
          ],
        ),
      ),
    );
  }

  Widget _buildGridExample() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '栅格布局示例',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        BRow(
          classNames: 'g-3',
          children: [
            BCol(
              classNames: 'col-12 col-md-4',
              child: Container(
                height: 100,
                color: Colors.blue.shade100,
                child: const Center(child: Text('列 1')),
              ),
            ),
            BCol(
              classNames: 'col-12 col-md-4',
              child: Container(
                height: 100,
                color: Colors.green.shade100,
                child: const Center(child: Text('列 2')),
              ),
            ),
            BCol(
              classNames: 'col-12 col-md-4',
              child: Container(
                height: 100,
                color: Colors.red.shade100,
                child: const Center(child: Text('列 3')),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSpacingExample() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '间距示例',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        BCol(
          classNames: 'p-4 m-2 bg-light',
          child: const Text('这个容器有内边距 p-4 和外边距 m-2'),
        ),
        const SizedBox(height: 10),
        BCol(
          classNames: 'p-3 m-3 bg-primary text-white',
          child: const Text('这个容器有不同的间距设置'),
        ),
      ],
    );
  }

  Widget _buildColorExample() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '颜色示例',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        BRow(
          classNames: 'g-2',
          children: [
            BCol(
              classNames: 'col-6 col-md-3',
              child: Container(
                height: 60,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Primary',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            BCol(
              classNames: 'col-6 col-md-3',
              child: Container(
                height: 60,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    'Success',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            BCol(
              classNames: 'col-6 col-md-3',
              child: Container(
                height: 60,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    'Danger',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            BCol(
              classNames: 'col-6 col-md-3',
              child: Container(
                height: 60,
                color: Colors.amber,
                child: const Center(
                  child: Text(
                    'Warning',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildResponsiveExample() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '响应式布局示例',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        BRow(
          classNames: 'g-3',
          children: [
            BCol(
              classNames: 'col-12 col-sm-6 col-md-4 col-lg-3',
              child: Container(
                height: 80,
                color: Colors.purple.shade100,
                child: const Center(child: Text('响应式列 1')),
              ),
            ),
            BCol(
              classNames: 'col-12 col-sm-6 col-md-4 col-lg-3',
              child: Container(
                height: 80,
                color: Colors.orange.shade100,
                child: const Center(child: Text('响应式列 2')),
              ),
            ),
            BCol(
              classNames: 'col-12 col-sm-6 col-md-4 col-lg-3',
              child: Container(
                height: 80,
                color: Colors.cyan.shade100,
                child: const Center(child: Text('响应式列 3')),
              ),
            ),
            BCol(
              classNames: 'col-12 col-sm-6 col-md-4 col-lg-3',
              child: Container(
                height: 80,
                color: Colors.pink.shade100,
                child: const Center(child: Text('响应式列 4')),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          '调整窗口大小查看响应式效果！',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}