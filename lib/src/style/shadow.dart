part of brick_bootstrap5_plus_style;

//阴影偏移量
class _ShadowOffset {
  final Offset? defaultOffset;
  final Offset? xs;
  final Offset? sm;
  final Offset? md;
  final Offset? lg;
  final Offset? xl;
  final Offset? xxl;

  _ShadowOffset({
    this.defaultOffset,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xxl,
  });

  _ShadowOffset _copyWith({
    Offset? defaultOffset,
    Offset? xs,
    Offset? sm,
    Offset? md,
    Offset? lg,
    Offset? xl,
    Offset? xxl,
  }) {
    return _ShadowOffset(
      defaultOffset: defaultOffset ?? this.defaultOffset,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
    );
  }

  _ShadowOffset _copyWithClass(String className) {
    final definitions = className.split("-");

    switch (definitions.length) {
      /// shadow-offset-10,20
      case 3:
        return _copyWithClass3(definitions);

      /// shadow-offset-xs-10,20
      case 4:
        return _copyWithClass4(definitions);
      default:
        return this;
    }
  }

  /// shadow-offset-xs-10,20
  _ShadowOffset _copyWithClass4(List<String> definitions) {
    final dx = double.parse(definitions.last.split(",")[0]);
    final dy = double.parse(definitions.last.split(",")[1]);
    final breakPoint = definitions[2];
    return _fromDefinitions(offset: Offset(dx, dy), breakPoint: breakPoint);
  }

  /// shadow-offset-10,20
  _ShadowOffset _copyWithClass3(List<String> definitions) {
    final dx = double.parse(definitions.last.split(",")[0]);
    final dy = double.parse(definitions.last.split(",")[1]);
    return _fromDefinitions(offset: Offset(dx, dy));
  }

  _ShadowOffset _fromDefinitions({
    Offset? offset,
    String? breakPoint,
  }) {
    if (offset == null) return this;
    switch (breakPoint) {
      case 'xs':
        return _copyWith(xs: offset);
      case 'sm':
        return _copyWith(sm: offset);
      case 'md':
        return _copyWith(md: offset);
      case 'lg':
        return _copyWith(lg: offset);
      case 'xl':
        return _copyWith(xl: offset);
      case 'xxl':
        return _copyWith(xxl: offset);
      default:
        return _copyWith(defaultOffset: offset);
    }
  }
}

//阴影模糊半径
class _ShadowBlurRadius {
  final double? defaultBlurRadius;
  final double? xs;
  final double? sm;
  final double? md;
  final double? lg;
  final double? xl;
  final double? xxl;

  _ShadowBlurRadius({
    this.defaultBlurRadius,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xxl,
  });

  _ShadowBlurRadius _copyWith({
    double? defaultBlurRadius,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
  }) {
    return _ShadowBlurRadius(
      defaultBlurRadius: defaultBlurRadius ?? this.defaultBlurRadius,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
    );
  }

  _ShadowBlurRadius _copyWithClass(String className) {
    final definitions = className.split("-");

    switch (definitions.length) {
      /// shadowBlurRadius-1
      case 3:
        return _copyWithClass3(definitions);

      /// shadowBlurRadius-xl-1
      case 4:
        return _copyWithClass4(definitions);
    }

    return this;
  }

  /// shadowBlurRadius-1
  _ShadowBlurRadius _copyWithClass3(List<String> definitions) {
    final shadowBlurRadius = double.parse(definitions.last);
    return _fromDefinitions(shadowBlurRadius: shadowBlurRadius);
  }

  /// shadowBlurRadius-xl-1
  _ShadowBlurRadius _copyWithClass4(List<String> definitions) {
    final shadowBlurRadius = double.parse(definitions.last);
    final breakPoint = definitions[2];
    return _fromDefinitions(
        shadowBlurRadius: shadowBlurRadius, breakPoint: breakPoint);
  }

  _ShadowBlurRadius _fromDefinitions({
    double? shadowBlurRadius,
    String? breakPoint,
  }) {
    if (shadowBlurRadius == null) return this;

    switch (breakPoint) {
      case 'xs':
        return _copyWith(xs: shadowBlurRadius);
      case 'sm':
        return _copyWith(sm: shadowBlurRadius);
      case 'md':
        return _copyWith(md: shadowBlurRadius);
      case 'lg':
        return _copyWith(lg: shadowBlurRadius);
      case 'xl':
        return _copyWith(xl: shadowBlurRadius);
      case 'xxl':
        return _copyWith(xxl: shadowBlurRadius);
      default:
        return _copyWith(defaultBlurRadius: shadowBlurRadius);
    }
  }
}
