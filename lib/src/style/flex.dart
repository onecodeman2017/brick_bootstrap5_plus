part of brick_bootstrap5_plus_style;

// Flex 弹性布局增强
class _FlexGrow {
  final int? defaultGrow;
  final int? xs;
  final int? sm;
  final int? md;
  final int? lg;
  final int? xl;
  final int? xxl;

  _FlexGrow({
    this.defaultGrow,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xxl,
  });

  _FlexGrow _copyWith({
    int? defaultGrow,
    int? xs,
    int? sm,
    int? md,
    int? lg,
    int? xl,
    int? xxl,
  }) {
    return _FlexGrow(
      defaultGrow: defaultGrow ?? this.defaultGrow,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
    );
  }

  _FlexGrow _copyWithClass(String className) {
    final definitions = className.split("-");

    switch (definitions.length) {
      case 2:
        final grow = int.tryParse(definitions.last);
        if (grow != null && grow >= 0 && grow <= 12) {
          return _copyWith(defaultGrow: grow);
        }
        break;
      case 3:
        final grow = int.tryParse(definitions.last);
        final breakPoint = definitions[1];
        if (grow != null && grow >= 0 && grow <= 12) {
          return _copyWith(
            defaultGrow: _getGrowByBreakpoint(breakPoint, grow),
          );
        }
        break;
    }

    return this;
  }

  int? _getGrowByBreakpoint(String breakPoint, int grow) {
    switch (breakPoint) {
      case 'xs':
        return grow;
      case 'sm':
        return grow;
      case 'md':
        return grow;
      case 'lg':
        return grow;
      case 'xl':
        return grow;
      case 'xxl':
        return grow;
      default:
        return null;
    }
  }
}

// 弹性收缩
class _FlexShrink {
  final int? defaultShrink;
  final int? xs;
  final int? sm;
  final int? md;
  final int? lg;
  final int? xl;
  final int? xxl;

  _FlexShrink({
    this.defaultShrink,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xxl,
  });

  _FlexShrink _copyWith({
    int? defaultShrink,
    int? xs,
    int? sm,
    int? md,
    int? lg,
    int? xl,
    int? xxl,
  }) {
    return _FlexShrink(
      defaultShrink: defaultShrink ?? this.defaultShrink,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
    );
  }

  _FlexShrink _copyWithClass(String className) {
    final definitions = className.split("-");

    switch (definitions.length) {
      case 2:
        final shrink = int.tryParse(definitions.last);
        if (shrink != null && shrink >= 0 && shrink <= 12) {
          return _copyWith(defaultShrink: shrink);
        }
        break;
    }

    return this;
  }
}

// 间距 (gap)
class _Gap {
  final double? defaultGap;
  final double? xs;
  final double? sm;
  final double? md;
  final double? lg;
  final double? xl;
  final double? xxl;

  _Gap({
    this.defaultGap,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xxl,
  });

  _Gap _copyWith({
    double? defaultGap,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
  }) {
    return _Gap(
      defaultGap: defaultGap ?? this.defaultGap,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
    );
  }

  _Gap _copyWithClass(String className) {
    final definitions = className.split("-");

    switch (definitions.length) {
      case 2:
        final gap = double.tryParse(definitions.last);
        if (gap != null && gap >= 0 && gap <= 5) {
          return _copyWith(defaultGap: gap * 4.0);
        }
        break;
    }

    return this;
  }
}
