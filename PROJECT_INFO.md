# 📦 项目信息

## 📋 基本信息

- **项目名称**: brick_bootstrap5_plus
- **描述**: A Flutter UI Dart libraries with the bootstrap5.
- **版本**: 1.1.0
- **GitHub仓库**: https://github.com/onecodeman2017/brick_bootstrap5_plus
- **Pub包**: https://pub.dev/packages/brick_bootstrap5_plus

## 🔗 重要链接

- 📦 [Pub Package](https://pub.dev/packages/brick_bootstrap5_plus)
- 🐛 [Issues](https://github.com/onecodeman2017/brick_bootstrap5_plus/issues)
- 💬 [Discussions](https://github.com/onecodeman2017/brick_bootstrap5_plus/discussions)
- 📝 [README](README.md)
- 📋 [CHANGELOG](CHANGELOG.md)

## 🏗️ 项目结构

```
lib/
├── src/
│   ├── style/           # 样式系统
│   │   ├── cache/       # 样式缓存
│   │   └── core/        # 核心解析器
│   ├── layout/          # 布局组件
│   ├── utilities/       # 工具函数
│   ├── widgets/         # UI组件
│   │   ├── core/        # 组件基类
│   │   ├── layout/      # 布局组件
│   │   └── typography/  # 文字组件
│   └── typography.dart    # 文字样式
└── brick_bootstrap5_plus.dart  # 主入口
```

## 🚀 功能特性

- ✅ 完整的 Bootstrap 5 栅格系统
- ✅ 响应式布局支持 (xs, sm, md, lg, xl, xxl)
- ✅ 丰富的 className 支持
- ✅ 样式缓存系统
- ✅ 类型安全的解析器
- ✅ 优化的性能表现

## 🛠️ 开发

### 安装
```bash
flutter pub add brick_bootstrap5_plus
```

### 基础使用
```dart
import 'package:brick_bootstrap5_plus/brick_bootstrap5_plus.dart';

BRow(
  children: [
    BCol(classNames: 'col-12 col-md-6', child: YourWidget()),
  ],
)
```

## 📄 许可证

本项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情。

## 🤝 贡献

欢迎提交 Issues 和 Pull Requests！

### 贡告问题
如果您发现任何问题，请在 [GitHub Issues](https://github.com/onecodeman2017/brick_bootstrap5_plus/issues) 中报告。

### 功能建议
欢迎在 [GitHub Discussions](https://github.com/onecodeman2017/brick_bootstrap5_plus/discussions) 中分享您的想法和建议。

## 📈 版本历史

查看 [CHANGELOG.md](CHANGELOG.md) 了解详细的版本变更历史。

## 🙏 致谢

- 感谢原始 [flutter_bootstrap5](https://pub.dev/packages/flutter_bootstrap5) 项目
- 感谢 Flutter 团队的优秀工作
- 感谢所有贡献者的支持

---

**最后更新**: 2024-12-18