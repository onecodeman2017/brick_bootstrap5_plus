part of brick_bootstrap5_plus_style;

class _Border {
  final double? defaultBorder;
  final double? xs;
  final double? sm;
  final double? md;
  final double? lg;
  final double? xl;
  final double? xxl;

  _Border({
    this.defaultBorder,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xxl,
  });

  _Border _copyWith({
    double? defaultBorder,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
  }) {
    return _Border(
      defaultBorder: defaultBorder ?? this.defaultBorder,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
    );
  }

  _Border _copyWithClass(String className) {
    final definitions = className.split("-");

    switch (definitions.length) {
      /// border
      case 1:
        return _copyWithClass1(definitions);

      /// border-1
      case 2:
        return _copyWithClass2(definitions);

      /// border-xl-1
      case 3:
        return _copyWithClass3(definitions);
    }

    return this;
  }

  /// border
  _Border _copyWithClass1(List<String> definitions) {
    final double border = 1;
    return _fromDefinitions(border: border);
  }

  /// border-1
  _Border _copyWithClass2(List<String> definitions) {
    final border = double.parse(definitions.last);
    return _fromDefinitions(border: border);
  }

  /// border-xl-1
  _Border _copyWithClass3(List<String> definitions) {
    final border = double.parse(definitions.last);
    final breakPoint = definitions[1];
    return _fromDefinitions(border: border, breakPoint: breakPoint);
  }

  _Border _fromDefinitions({
    double? border,
    String? breakPoint,
  }) {
    if (border == null) return this;

    switch (breakPoint) {
      case 'xs':
        return _copyWith(xs: border);
      case 'sm':
        return _copyWith(sm: border);
      case 'md':
        return _copyWith(md: border);
      case 'lg':
        return _copyWith(lg: border);
      case 'xl':
        return _copyWith(xl: border);
      case 'xxl':
        return _copyWith(xxl: border);
      default:
        return _copyWith(defaultBorder: border);
    }
  }
}

class _BorderRadius {
  final double? defaultBorderRadius;
  final double? xs;
  final double? sm;
  final double? md;
  final double? lg;
  final double? xl;
  final double? xxl;

  _BorderRadius({
    this.defaultBorderRadius,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xxl,
  });

  _BorderRadius _copyWith({
    double? defaultBorderRadius,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
  }) {
    return _BorderRadius(
      defaultBorderRadius: defaultBorderRadius ?? this.defaultBorderRadius,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
    );
  }

  _BorderRadius _copyWithClass(String className) {
    final definitions = className.split("-");

    switch (definitions.length) {
      /// borderRadius-1
      case 3:
        return _copyWithClass3(definitions);

      /// borderRadius-xl-1
      case 4:
        return _copyWithClass4(definitions);
    }

    return this;
  }

  /// borderRadius-1
  _BorderRadius _copyWithClass3(List<String> definitions) {
    final borderRadius = double.parse(definitions.last);
    return _fromDefinitions(borderRadius: borderRadius);
  }

  /// borderRadius-xl-1
  _BorderRadius _copyWithClass4(List<String> definitions) {
    final borderRadius = double.parse(definitions.last);
    final breakPoint = definitions[2];
    return _fromDefinitions(borderRadius: borderRadius, breakPoint: breakPoint);
  }

  _BorderRadius _fromDefinitions({
    double? borderRadius,
    String? breakPoint,
  }) {
    if (borderRadius == null) return this;

    switch (breakPoint) {
      case 'xs':
        return _copyWith(xs: borderRadius);
      case 'sm':
        return _copyWith(sm: borderRadius);
      case 'md':
        return _copyWith(md: borderRadius);
      case 'lg':
        return _copyWith(lg: borderRadius);
      case 'xl':
        return _copyWith(xl: borderRadius);
      case 'xxl':
        return _copyWith(xxl: borderRadius);
      default:
        return _copyWith(defaultBorderRadius: borderRadius);
    }
  }
}

class _BorderRadiustopLeft {
  final double? defaultBorderRadiustopLeft;
  final double? xs;
  final double? sm;
  final double? md;
  final double? lg;
  final double? xl;
  final double? xxl;

  _BorderRadiustopLeft({
    this.defaultBorderRadiustopLeft,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xxl,
  });

  _BorderRadiustopLeft _copyWith({
    double? defaultBorderRadiustopLeft,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
  }) {
    return _BorderRadiustopLeft(
      defaultBorderRadiustopLeft:
          defaultBorderRadiustopLeft ?? this.defaultBorderRadiustopLeft,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
    );
  }

  // _BorderRadiusLeftTop _copyWithClass(String className) {
  //   final definitions = className.split("-");

  //   switch (definitions.length) {
  //     /// borderRadiusLeftTop-1
  //     case 3:
  //       return _copyWithClass3(definitions);

  //     /// borderRadiusLeftTop-1
  //     case 4:
  //       return _copyWithClass4(definitions);
  //   }

  //   return this;
  // }

  /// borderRadiusLeftTop-1
  // _BorderRadiusLeftTop _copyWithClass3(List<String> definitions) {
  //   final borderRadiusLeftTop = double.parse(definitions.last);
  //   return _fromDefinitions(borderRadiusLeftTop: borderRadiusLeftTop);
  // }

  // /// borderRadiusLeftTop-xl-1
  // _BorderRadiusLeftTop _copyWithClass4(List<String> definitions) {
  //   final borderRadiusLeftTop = double.parse(definitions.last);
  //   final breakPoint = definitions[2];
  //   return _fromDefinitions(
  //       borderRadiusLeftTop: borderRadiusLeftTop, breakPoint: breakPoint);
  // }

  // _BorderRadiusLeftTop _fromDefinitions({
  //   double? borderRadiusLeftTop,
  //   String? breakPoint,
  // }) {
  //   if (borderRadiusLeftTop == null) return this;

  //   switch (breakPoint) {
  //     case 'xs':
  //       return _copyWith(xs: borderRadiusLeftTop);
  //     case 'sm':
  //       return _copyWith(sm: borderRadiusLeftTop);
  //     case 'md':
  //       return _copyWith(md: borderRadiusLeftTop);
  //     case 'lg':
  //       return _copyWith(lg: borderRadiusLeftTop);
  //     case 'xl':
  //       return _copyWith(xl: borderRadiusLeftTop);
  //     case 'xxl':
  //       return _copyWith(xxl: borderRadiusLeftTop);
  //     default:
  //       return _copyWith(defaultBorderRadiusLeftTop: borderRadiusLeftTop);
  //   }
  // }
}

class _BorderRadiustopRight {
  final double? defaultBorderRadiustopRight;
  final double? xs;
  final double? sm;
  final double? md;
  final double? lg;
  final double? xl;
  final double? xxl;

  _BorderRadiustopRight({
    this.defaultBorderRadiustopRight,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xxl,
  });

  _BorderRadiustopRight _copyWith({
    double? defaultBorderRadiustopRight,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
  }) {
    return _BorderRadiustopRight(
      defaultBorderRadiustopRight:
          defaultBorderRadiustopRight ?? this.defaultBorderRadiustopRight,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
    );
  }
}

class _BorderRadiusbottomLeft {
  final double? defaultBorderRadiusbottomLeft;
  final double? xs;
  final double? sm;
  final double? md;
  final double? lg;
  final double? xl;
  final double? xxl;

  _BorderRadiusbottomLeft({
    this.defaultBorderRadiusbottomLeft,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xxl,
  });

  _BorderRadiusbottomLeft _copyWith({
    double? defaultBorderRadiusbottomLeft,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
  }) {
    return _BorderRadiusbottomLeft(
      defaultBorderRadiusbottomLeft:
          defaultBorderRadiusbottomLeft ?? this.defaultBorderRadiusbottomLeft,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
    );
  }
}

class _BorderRadiusbottomRight {
  final double? defaultBorderRadiusbottomRight;
  final double? xs;
  final double? sm;
  final double? md;
  final double? lg;
  final double? xl;
  final double? xxl;

  _BorderRadiusbottomRight({
    this.defaultBorderRadiusbottomRight,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xxl,
  });

  _BorderRadiusbottomRight _copyWith({
    double? defaultBorderRadiusbottomRight,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
  }) {
    return _BorderRadiusbottomRight(
      defaultBorderRadiusbottomRight:
          defaultBorderRadiusbottomRight ?? this.defaultBorderRadiusbottomRight,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
    );
  }
}

class _BorderRadiusTop {
  final double? defaultBorderRadiusTop;
  final double? xs;
  final double? sm;
  final double? md;
  final double? lg;
  final double? xl;
  final double? xxl;

  _BorderRadiusTop({
    this.defaultBorderRadiusTop,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xxl,
  });

  _BorderRadiusTop _copyWith({
    double? defaultBorderRadiusTop,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
  }) {
    return _BorderRadiusTop(
      defaultBorderRadiusTop:
          defaultBorderRadiusTop ?? this.defaultBorderRadiusTop,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
    );
  }
}

class _BorderRadiusBottom {
  final double? defaultBorderRadiusBottom;
  final double? xs;
  final double? sm;
  final double? md;
  final double? lg;
  final double? xl;
  final double? xxl;

  _BorderRadiusBottom({
    this.defaultBorderRadiusBottom,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xxl,
  });

  _BorderRadiusBottom _copyWith({
    double? defaultBorderRadiusBottom,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
  }) {
    return _BorderRadiusBottom(
      defaultBorderRadiusBottom:
          defaultBorderRadiusBottom ?? this.defaultBorderRadiusBottom,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
    );
  }
}

class _BorderRadiusLeft {
  final double? defaultBorderRadiusLeft;
  final double? xs;
  final double? sm;
  final double? md;
  final double? lg;
  final double? xl;
  final double? xxl;

  _BorderRadiusLeft({
    this.defaultBorderRadiusLeft,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xxl,
  });

  _BorderRadiusLeft _copyWith({
    double? defaultBorderRadiusLeft,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
  }) {
    return _BorderRadiusLeft(
      defaultBorderRadiusLeft:
          defaultBorderRadiusLeft ?? this.defaultBorderRadiusLeft,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
    );
  }
}

class _BorderRadiusRight {
  final double? defaultBorderRadiusRight;
  final double? xs;
  final double? sm;
  final double? md;
  final double? lg;
  final double? xl;
  final double? xxl;

  _BorderRadiusRight({
    this.defaultBorderRadiusRight,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xxl,
  });

  _BorderRadiusRight _copyWith({
    double? defaultBorderRadiusRight,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
  }) {
    return _BorderRadiusRight(
      defaultBorderRadiusRight:
          defaultBorderRadiusRight ?? this.defaultBorderRadiusRight,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
    );
  }
}
