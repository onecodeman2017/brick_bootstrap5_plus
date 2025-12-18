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
    final cached = _styleCache[cacheKey];
    if (cached != null) {
      return cached;
    }
  }

  // 计算样式
  final result = _calculateStyle(screenData, constraints, styles);
  
  // 缓存结果
  if (useCache) {
    _styleCache[cacheKey] = result;
  }
  
  return result;
}

// 简化的本地缓存
final Map<String, dynamic> _styleCache = {};

String _generateCacheKey(
  dynamic screenData,
  dynamic constraints,
  dynamic styles,
) {
  final buffer = StringBuffer();
  
  // 断点信息
  buffer.write('bp:${screenData.currentBreakPoint?.name ?? "unknown"}');
  
  // 约束信息
  buffer.write('|w:${constraints.maxWidth?.toInt() ?? 0}');
  buffer.write('|h:${constraints.maxHeight?.toInt() ?? 0}');
  
  // 样式哈希
  if (styles != null) {
    buffer.write('|s:${styles.hashCode}');
  }
  
  return buffer.toString();
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