/// 新增功能演示示例
///
/// 展示 Flex 弹性布局、圆角预设、文本样式、响应式显示等新功能的实际使用

import 'package:brick_bootstrap5_plus/brick_bootstrap5_plus.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const NewFeaturesDemo());
}

class NewFeaturesDemo extends StatelessWidget {
  const NewFeaturesDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brick Bootstrap5+ 新功能演示',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const NewFeaturesDemoPage(),
    );
  }
}

class NewFeaturesDemoPage extends StatefulWidget {
  const NewFeaturesDemoPage({Key? key}) : super(key: key);

  @override
  State<NewFeaturesDemoPage> createState() => _NewFeaturesDemoPageState();
}

class _NewFeaturesDemoPageState extends State<NewFeaturesDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Brick Bootstrap5+ 新功能'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 标题
              const Padding(
                padding: EdgeInsets.only(bottom: 24),
                child: Text(
                  '新增功能展示',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // 1. Flex 弹性布局
              _buildSection(
                title: '1. Flex 弹性布局 (Flex Layout)',
                children: [
                  _FlexLayoutExample(),
                ],
              ),

              // 2. 圆角预设
              _buildSection(
                title: '2. 圆角预设 (Rounded Presets)',
                children: [
                  _RoundedPresetsExample(),
                ],
              ),

              // 3. 文本样式增强
              _buildSection(
                title: '3. 文本样式增强 (Text Styles)',
                children: [
                  _TextStylesExample(),
                ],
              ),

              // 4. 响应式显示
              _buildSection(
                title: '4. 响应式显示 (Responsive Display)',
                children: [
                  _ResponsiveDisplayExample(),
                ],
              ),

              // 5. 实际应用示例
              _buildSection(
                title: '5. 实际应用 - 响应式卡片 (Real-world Example)',
                children: [
                  _ProductCardExample(),
                ],
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required List<Widget> children,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ...children,
        ],
      ),
    );
  }
}

/// 示例 1: Flex 弹性布局
class _FlexLayoutExample extends StatelessWidget {
  const _FlexLayoutExample();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Flex grow 示例
          const Text(
            'Flex Grow (弹性增閿, 0-24 外整数2列):', // 24列栅格, 12列 = 一半
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          Container(
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]!),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 12,
                  child: Container(
                    color: Colors.blue[100],
                    child: const Center(
                      child: Text('flex-grow-12 (50%)'),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 12,
                  child: Container(
                    color: Colors.green[100],
                    child: const Center(
                      child: Text('flex-grow-12 (50%)'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          // Gap 示例
          const Text(
            'Gap (子元素间距):',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          Container(
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]!),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.orange[100],
                    child: const Center(child: Text('Item 1')),
                  ),
                ),
                const SizedBox(width: 12), // gap-3
                Expanded(
                  child: Container(
                    color: Colors.orange[100],
                    child: const Center(child: Text('Item 2')),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            '✨ 使用: flexGrow(12), gap(2), flexWithGap(12, 3)',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}

/// 示例 2: 圆角预设
class _RoundedPresetsExample extends StatelessWidget {
  const _RoundedPresetsExample();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '圆角预设效果:',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              _RoundedBox(
                label: 'sm (2px)',
                borderRadius: BorderRadius.circular(2),
              ),
              _RoundedBox(
                label: 'md (4px)',
                borderRadius: BorderRadius.circular(4),
              ),
              _RoundedBox(
                label: 'lg (8px)',
                borderRadius: BorderRadius.circular(8),
              ),
              _RoundedBox(
                label: 'xl (12px)',
                borderRadius: BorderRadius.circular(12),
              ),
              _RoundedBox(
                label: 'full (圆形)',
                borderRadius: BorderRadius.circular(50),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            '✨ 使用: roundedPreset(\'lg\'), roundedValue(8)',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}

class _RoundedBox extends StatelessWidget {
  final String label;
  final BorderRadius borderRadius;

  const _RoundedBox({
    required this.label,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.purple[100],
            borderRadius: borderRadius,
            border: Border.all(color: Colors.purple[300]!),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}

/// 示例 3: 文本样式增强
class _TextStylesExample extends StatelessWidget {
  const _TextStylesExample();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 文本截断
          const Text(
            '文本截断 (Text Truncate):',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Text(
              'This is a very long text that will be truncated to a single line with ellipsis at the end',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 16),

          // 行高
          const Text(
            '行高 (Line Height):',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Text(
              'This text has a custom line height.\n'
              'It makes the content more readable\n'
              'and visually appealing on the page.',
              style: TextStyle(height: 1.8),
            ),
          ),
          const SizedBox(height: 16),

          // 字间距
          const Text(
            '字间距 (Letter Spacing):',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Text(
              'T  H  I  S    T  E  X  T',
              style: TextStyle(letterSpacing: 2.0),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            '✨ 使用: textTruncate(), lineHeight(1.8), letterSpacingValue(2)',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}

/// 示例 4: 响应式显示
class _ResponsiveDisplayExample extends StatelessWidget {
  const _ResponsiveDisplayExample();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '响应式控制示例:',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 12),

          // 显示示例
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.green[50],
              border: Border.all(color: Colors.green[300]!),
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '✓ 显示状态',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 4),
                Text(
                  'visible() 或 visibleAt("md")',
                  style: TextStyle(fontSize: 12, color: Colors.green),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),

          // 隐藏示例
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              border: Border.all(color: Colors.grey[300]!),
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '✗ 隐藏状态',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 4),
                Text(
                  'hidden() 或 hiddenAt("sm")',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            '✨ 支持断点: xs, sm, md, lg, xl, xxl',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}

/// 示例 5: 实际应用 - 响应式卡片
class _ProductCardExample extends StatelessWidget {
  const _ProductCardExample();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _ProductCard(
          image: Colors.blue,
          title: 'Premium Product',
          description: 'High quality product with excellent features',
          price: '\$99.99',
        ),
        const SizedBox(height: 16),
        _ProductCard(
          image: Colors.green,
          title: 'Standard Item',
          description: 'Reliable and cost-effective solution',
          price: '\$49.99',
        ),
        const SizedBox(height: 16),
        _ProductCard(
          image: Colors.orange,
          title: 'Budget Option',
          description: 'Affordable choice for basic needs',
          price: '\$29.99',
        ),
      ],
    );
  }
}

class _ProductCard extends StatelessWidget {
  final Color image;
  final String title;
  final String description;
  final String price;

  const _ProductCard({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 产品图片占位符
          Container(
            width: double.infinity,
            height: 180,
            color: image.withOpacity(0.3),
            child: Center(
              child: Text(
                'Product Image',
                style: TextStyle(
                  color: image,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

          // 产品信息
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 标题 - 单行截断
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),

                // 描述 - 多行显示
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[600],
                    height: 1.5,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 12),

                // 价格和按钮
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                      ),
                      child: const Text('Add'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
