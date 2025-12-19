part of brick_bootstrap5_plus_style;

// 响应式显示控制
class _ResponsiveDisplay {
  final bool? hidden;
  final bool? visible;
  final bool? block;
  final Map<String, bool> breakpointDisplay;

  _ResponsiveDisplay({
    this.hidden,
    this.visible,
    this.block,
    this.breakpointDisplay = const {},
  });

  _ResponsiveDisplay _copyWith({
    bool? hidden,
    bool? visible,
    bool? block,
    Map<String, bool>? breakpointDisplay,
  }) {
    return _ResponsiveDisplay(
      hidden: hidden ?? this.hidden,
      visible: visible ?? this.visible,
      block: block ?? this.block,
      breakpointDisplay: breakpointDisplay ?? this.breakpointDisplay,
    );
  }

  _ResponsiveDisplay _copyWithClass(String className) {
    final definitions = className.split("-");

    if (className == 'hidden') {
      return _copyWith(hidden: true);
    }

    if (className == 'visible') {
      return _copyWith(visible: true);
    }

    if (className == 'block') {
      return _copyWith(block: true);
    }

    // 处理响应式显示: hidden-xs, block-sm 等
    if (className.startsWith('hidden-') && definitions.length == 2) {
      final breakpoint = definitions[1];
      final updatedMap = Map<String, bool>.from(breakpointDisplay);
      updatedMap[breakpoint] = true;
      return _copyWith(breakpointDisplay: updatedMap);
    }

    if (className.startsWith('block-') && definitions.length == 2) {
      final breakpoint = definitions[1];
      final updatedMap = Map<String, bool>.from(breakpointDisplay);
      updatedMap[breakpoint] = false;
      return _copyWith(breakpointDisplay: updatedMap);
    }

    if (className.startsWith('visible-') && definitions.length == 2) {
      final breakpoint = definitions[1];
      final updatedMap = Map<String, bool>.from(breakpointDisplay);
      updatedMap['visible_$breakpoint'] = true;
      return _copyWith(breakpointDisplay: updatedMap);
    }

    return this;
  }

  // 判断在指定断点是否应该显示
  bool isVisibleAt(BreakPoint breakPoint) {
    if (hidden == true) return false;
    if (visible == true) return true;
    if (block == true) return true;

    // 检查响应式规则
    final breakpointName = _getBreakpointName(breakPoint);
    if (breakpointDisplay.containsKey(breakpointName)) {
      return !breakpointDisplay[breakpointName]!;
    }

    return true; // 默认显示
  }

  String _getBreakpointName(BreakPoint breakPoint) {
    if (breakPoint.minWidth == 0 && breakPoint.maxWidth == 576) return 'xs';
    if (breakPoint.minWidth == 576 && breakPoint.maxWidth == 768) return 'sm';
    if (breakPoint.minWidth == 768 && breakPoint.maxWidth == 992) return 'md';
    if (breakPoint.minWidth == 992 && breakPoint.maxWidth == 1200) return 'lg';
    if (breakPoint.minWidth == 1200 && breakPoint.maxWidth == 1400) return 'xl';
    if (breakPoint.minWidth == 1400) return 'xxl';
    return 'unknown';
  }
}

// 溢出隐藏和文本裁剪
class _Overflow {
  final String? overflow; // 'hidden', 'visible', 'scroll', 'auto'
  final bool? clipped;

  _Overflow({
    this.overflow,
    this.clipped,
  });

  _Overflow _copyWithClass(String className) {
    if (className.startsWith('overflow-')) {
      final type = className.replaceFirst('overflow-', '');
      return _Overflow(overflow: type);
    }

    if (className == 'clip') {
      return _Overflow(clipped: true);
    }

    return this;
  }
}
