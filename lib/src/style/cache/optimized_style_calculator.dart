part of '../style.dart';

// 优化的样式计算函数
dynamic getOptimizedStyle(
  dynamic screenData,
  dynamic constraints,
  dynamic styles, {
  bool useCache = true,
}) {
  // 创建缓存key
  final cacheKey = _generateCacheKey(screenData, constraints, styles);

  // 尝试从缓存获取
  if (useCache) {
    final cached = StyleCache.getStyle(cacheKey);
    if (cached != null) {
      return cached;
    }
  }

  // 计算样式
  final result = _calculateStyle(screenData, constraints, styles);

  // 缓存结果
  if (useCache) {
    StyleCache.cacheStyle(cacheKey, result);
  }

  return result;
}

String _generateCacheKey(
  dynamic screenData,
  dynamic constraints,
  dynamic styles,
) {
  // 使用更高效的缓存键生成方式
  return '${screenData.currentBreakPoint?.name ?? "unknown"}|${constraints.maxWidth?.toInt() ?? 0}|${constraints.maxHeight?.toInt() ?? 0}|${styles?.hashCode ?? 0}';
}

dynamic _calculateStyle(
  dynamic screenData,
  dynamic constraints,
  dynamic styles,
) {
  // 这里应该调用原始的getStyle函数，但现在返回简化的样式对象
  return {
    'screenData': screenData,
    'constraints': constraints,
    'styles': styles,
  };
}
