part of brick_bootstrap5_plus_style;

// 文本截断
class _TextTruncate {
  final bool? truncate;
  final int? maxLines;

  _TextTruncate({
    this.truncate,
    this.maxLines,
  });

  _TextTruncate _copyWithClass(String className) {
    if (className == 'text-truncate') {
      return _TextTruncate(truncate: true, maxLines: 1);
    }
    if (className == 'text-break') {
      return _TextTruncate(truncate: false);
    }
    return this;
  }
}

// 行高
class _LineHeight {
  final double? defaultHeight;
  final double? xs;
  final double? sm;
  final double? md;
  final double? lg;
  final double? xl;
  final double? xxl;

  _LineHeight({
    this.defaultHeight,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xxl,
  });

  _LineHeight _copyWith({
    double? defaultHeight,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
  }) {
    return _LineHeight(
      defaultHeight: defaultHeight ?? this.defaultHeight,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
    );
  }

  _LineHeight _copyWithClass(String className) {
    final definitions = className.split("-");

    if (definitions.length < 2) return this;

    final num = double.tryParse(definitions.last);
    if (num != null) {
      return _copyWith(defaultHeight: num);
    }

    return this;
  }
}

// 字间距
class _LetterSpacing {
  final double? defaultSpacing;
  final double? xs;
  final double? sm;
  final double? md;
  final double? lg;
  final double? xl;
  final double? xxl;

  _LetterSpacing({
    this.defaultSpacing,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xxl,
  });

  _LetterSpacing _copyWith({
    double? defaultSpacing,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
  }) {
    return _LetterSpacing(
      defaultSpacing: defaultSpacing ?? this.defaultSpacing,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
    );
  }

  _LetterSpacing _copyWithClass(String className) {
    final definitions = className.split("-");

    if (definitions.length < 2) return this;

    // 处理预设值
    switch (definitions.last) {
      case 'tight':
        return _copyWith(defaultSpacing: -0.04);
      case 'normal':
        return _copyWith(defaultSpacing: 0);
      case 'wide':
        return _copyWith(defaultSpacing: 0.02);
      case 'wider':
        return _copyWith(defaultSpacing: 0.04);
      case 'widest':
        return _copyWith(defaultSpacing: 0.08);
      default:
        final num = double.tryParse(definitions.last);
        if (num != null) {
          return _copyWith(defaultSpacing: num);
        }
    }

    return this;
  }
}

// 词间距
class _WordSpacing {
  final double? defaultSpacing;
  final double? xs;
  final double? sm;
  final double? md;
  final double? lg;
  final double? xl;
  final double? xxl;

  _WordSpacing({
    this.defaultSpacing,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xxl,
  });

  _WordSpacing _copyWith({
    double? defaultSpacing,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
  }) {
    return _WordSpacing(
      defaultSpacing: defaultSpacing ?? this.defaultSpacing,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
    );
  }

  _WordSpacing _copyWithClass(String className) {
    final definitions = className.split("-");

    if (definitions.length < 2) return this;

    final num = double.tryParse(definitions.last);
    if (num != null) {
      return _copyWith(defaultSpacing: num * 4.0);
    }

    return this;
  }
}

// 文本转换
class _TextTransform {
  final String? transform; // 'capitalize', 'uppercase', 'lowercase'

  _TextTransform({this.transform});

  _TextTransform _copyWithClass(String className) {
    if (className.startsWith('text-transform-')) {
      final transform = className.replaceFirst('text-transform-', '');
      return _TextTransform(transform: transform);
    }
    return this;
  }

  String _applyTransform(String text) {
    if (transform == null) return text;

    switch (transform) {
      case 'uppercase':
        return text.toUpperCase();
      case 'lowercase':
        return text.toLowerCase();
      case 'capitalize':
        return text.split(' ').map((word) {
          if (word.isEmpty) return word;
          return word[0].toUpperCase() + word.substring(1).toLowerCase();
        }).join(' ');
      default:
        return text;
    }
  }
}
