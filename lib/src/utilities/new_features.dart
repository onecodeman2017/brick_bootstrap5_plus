part of brick_bootstrap5_plus_utilities;

// 新增功能的便捷工具函数

/// Flex 弹性增长
/// 例如: flexGrow(12) -> 'flex-grow-12' (支持 0-24，与 24 列栅格系统对齐)
String flexGrow(int value) {
  if (value < 0 || value > 24) {
    throw ArgumentError(
        'flex-grow value must be between 0 and 24 (aligned with 24-column grid system)');
  }
  return 'flex-grow-$value';
}

/// Flex 弹性收缩
/// 例如: flexShrink(6) -> 'flex-shrink-6' (支持 0-24，与 24 列栅格系统对齐)
String flexShrink(int value) {
  if (value < 0 || value > 24) {
    throw ArgumentError(
        'flex-shrink value must be between 0 and 24 (aligned with 24-column grid system)');
  }
  return 'flex-shrink-$value';
}

/// 间距 (Gap)
/// 例如: gap(3) -> 'gap-3'
String gap(int value) {
  if (value < 0 || value > 5) {
    throw ArgumentError('gap value must be between 0 and 5');
  }
  return 'gap-$value';
}

/// 圆角预设
/// 例如: roundedPreset('lg') -> 'rounded-lg'
/// 支持: 'none', 'sm', 'md', 'lg', 'xl', 'full', 'circle'
String roundedPreset(String preset) {
  const valid = ['none', 'sm', 'md', 'lg', 'xl', 'full', 'circle'];
  if (!valid.contains(preset)) {
    throw ArgumentError(
        'Invalid rounded preset: $preset. Must be one of: ${valid.join(", ")}');
  }
  return 'rounded-$preset';
}

/// 自定义圆角
/// 例如: roundedValue(8) -> 'rounded-8'
String roundedValue(int radius) {
  if (radius < 0) {
    throw ArgumentError('Radius must be non-negative');
  }
  return 'rounded-$radius';
}

/// 行高
/// 例如: lineHeightValue(1.5) -> 'line-height-1.5'
String lineHeightValue(double value) {
  return 'line-height-$value';
}

/// 字间距 (Letter Spacing)
/// 例如: letterSpacingValue(2) -> 'letter-spacing-2'
String letterSpacingValue(int value) {
  return 'letter-spacing-$value';
}

/// 词间距 (Word Spacing)
/// 例如: wordSpacingValue(2) -> 'word-spacing-2'
String wordSpacingValue(int value) {
  return 'word-spacing-$value';
}

/// 文本截断 (单行)
/// 使用: textTruncateClass() -> 'text-truncate'
String textTruncateClass() {
  return 'text-truncate';
}

/// 文本换行
/// 使用: textBreakClass() -> 'text-break'
String textBreakClass() {
  return 'text-break';
}

/// 完全隐藏
/// 使用: hiddenClass() -> 'hidden'
String hiddenClass() {
  return 'hidden';
}

/// 在指定断点隐藏
/// 例如: hiddenAtBreakpoint('sm') -> 'hidden-sm'
String hiddenAtBreakpoint(String breakpoint) {
  const valid = ['xs', 'sm', 'md', 'lg', 'xl', 'xxl'];
  if (!valid.contains(breakpoint)) {
    throw ArgumentError('Invalid breakpoint: $breakpoint');
  }
  return 'hidden-$breakpoint';
}

/// 显示
/// 使用: visibleClass() -> 'visible'
String visibleClass() {
  return 'visible';
}

/// 在指定断点显示
/// 例如: visibleAtBreakpoint('md') -> 'visible-md'
String visibleAtBreakpoint(String breakpoint) {
  const valid = ['xs', 'sm', 'md', 'lg', 'xl', 'xxl'];
  if (!valid.contains(breakpoint)) {
    throw ArgumentError('Invalid breakpoint: $breakpoint');
  }
  return 'visible-$breakpoint';
}

/// 块级显示
/// 使用: blockClass() -> 'block'
String blockClass() {
  return 'block';
}

/// 在指定断点显示为块级
/// 例如: blockAtBreakpoint('lg') -> 'block-lg'
String blockAtBreakpoint(String breakpoint) {
  const valid = ['xs', 'sm', 'md', 'lg', 'xl', 'xxl'];
  if (!valid.contains(breakpoint)) {
    throw ArgumentError('Invalid breakpoint: $breakpoint');
  }
  return 'block-$breakpoint';
}

/// 组合多个className
/// 例如: combineClasses(['flex-grow-6', 'gap-2']) -> 'flex-grow-6 gap-2'
String combineClasses(List<String> classes) {
  return classes.where((c) => c.isNotEmpty).join(' ');
}
