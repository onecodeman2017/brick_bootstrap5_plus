// 响应式解析器基础类
class ResponsiveResolver<T> {
  const ResponsiveResolver();

  T resolveValue(
    dynamic currentBreakPoint,
    T defaultValue, {
    T? xs,
    T? sm,
    T? md,
    T? lg,
    T? xl,
    T? xxl,
  }) {
    final values = [xs, sm, md, lg, xl, xxl];
    
    // 简化的断点检查逻辑
    for (int i = 0; i < values.length; i++) {
      if (values[i] != null) {
        return values[i] as T;
      }
    }
    
    return defaultValue;
  }
}

class DoubleResolver extends ResponsiveResolver<double> {
  const DoubleResolver() : super();
}

class IntResolver extends ResponsiveResolver<int> {
  const IntResolver() : super();
}

class ColorResolver extends ResponsiveResolver<dynamic> {
  const ColorResolver() : super();
}