part of brick_bootstrap5_plus_style;

class _Opacity {
  final double? defaultOpacity;
  final double? xs;
  final double? sm;
  final double? md;
  final double? lg;
  final double? xl;
  final double? xxl;

  _Opacity({
    this.defaultOpacity,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xxl,
  });

  _Opacity _copyWith({
    double? defaultOpacity,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
  }) {
    return _Opacity(
      defaultOpacity: defaultOpacity ?? this.defaultOpacity,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
    );
  }

  _Opacity _copyWithClass(String className) {
    final definitions = className.split("-");

    switch (definitions.length) {
      /// opacity-1
      case 2:
        return _copyWithClass2(definitions);

      /// opacity-xl-1
      case 3:
        return _copyWithClass3(definitions);
    }

    return this;
  }

  _Opacity _copyWithClass2(List<String> definitions) {
    final opacity = double.parse(definitions.last);
    return _fromDefinitions(opacity: opacity);
  }

  _Opacity _copyWithClass3(List<String> definitions) {
    final opacity = double.parse(definitions.last);
    final breakPoint = definitions[1];
    return _fromDefinitions(opacity: opacity, breakPoint: breakPoint);
  }

  _Opacity _fromDefinitions({
    double? opacity,
    String? breakPoint,
  }) {
    if (opacity == null) return this;
    switch (breakPoint) {
      case 'xs':
        return _copyWith(xs: opacity);
      case 'sm':
        return _copyWith(sm: opacity);
      case 'md':
        return _copyWith(md: opacity);
      case 'lg':
        return _copyWith(lg: opacity);
      case 'xl':
        return _copyWith(xl: opacity);
      case 'xxl':
        return _copyWith(xxl: opacity);
      default:
        return _copyWith(defaultOpacity: opacity);
    }
  }
}
