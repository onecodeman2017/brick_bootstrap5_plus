part of brick_bootstrap5_plus_style;

// 圆角预设系统
class _RoundedPresets {
  final double? defaultRadius;
  final double? xs;
  final double? sm;
  final double? md;
  final double? lg;
  final double? xl;
  final double? xxl;

  _RoundedPresets({
    this.defaultRadius,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xxl,
  });

  _RoundedPresets _copyWith({
    double? defaultRadius,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
  }) {
    return _RoundedPresets(
      defaultRadius: defaultRadius ?? this.defaultRadius,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
    );
  }

  _RoundedPresets _copyWithClass(String className) {
    final definitions = className.split("-");

    if (definitions.isEmpty) return this;

    // 处理预设圆角
    switch (definitions.last) {
      case 'none':
        return _copyWith(defaultRadius: 0);
      case 'sm':
        return _copyWith(defaultRadius: 2);
      case 'md':
        return _copyWith(defaultRadius: 4);
      case 'lg':
        return _copyWith(defaultRadius: 8);
      case 'xl':
        return _copyWith(defaultRadius: 12);
      case 'full':
      case 'circle':
        return _copyWith(defaultRadius: 9999); // 极大值变成圆形
      default:
        // 处理 rounded-{number} 的形式
        final num = int.tryParse(definitions.last);
        if (num != null) {
          return _copyWith(defaultRadius: num.toDouble());
        }
    }

    return this;
  }

  // 获取当前断点的圆角值
  double? getCurrentRadius(BreakPoint breakPoint) {
    if (defaultRadius != null) {
      return defaultRadius;
    }
    // 可以扩展支持响应式圆角
    return null;
  }
}

// 单边圆角
class _RoundedSide {
  final double? defaultRadius;
  final double? xs;
  final double? sm;
  final double? md;
  final double? lg;
  final double? xl;
  final double? xxl;

  _RoundedSide({
    this.defaultRadius,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xxl,
  });

  _RoundedSide _copyWith({
    double? defaultRadius,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
  }) {
    return _RoundedSide(
      defaultRadius: defaultRadius ?? this.defaultRadius,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
    );
  }

  _RoundedSide _copyWithClass(String className) {
    final definitions = className.split("-");

    if (definitions.length < 2) return this;

    // 提取数字部分
    final num = int.tryParse(definitions.last);
    if (num != null) {
      return _copyWith(defaultRadius: num.toDouble());
    }

    return this;
  }
}
