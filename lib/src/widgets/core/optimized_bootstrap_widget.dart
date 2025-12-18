// 优化组件基类 - 提供通用的样式处理功能
abstract class OptimizedBootstrapWidget {
  
  /// 验证className
  bool isValidClassName(String className) {
    return className.isNotEmpty && 
           !className.contains(RegExp(r'[^\w\-\s]'));
  }

  /// 解析className列表
  List<String> parseClassNames(String classNames) {
    if (classNames.trim().isEmpty) return [];
    
    return classNames
        .trim()
        .split(RegExp(r'\s+'))
        .where((name) => name.isNotEmpty && isValidClassName(name))
        .toList();
  }

  /// 生成缓存key
  String generateCacheKey(
    dynamic screenData,
    dynamic constraints,
    String classNames,
  ) {
    return '${screenData.currentBreakPoint?.name ?? "unknown"}_${constraints.maxWidth?.toInt() ?? 0}_$classNames';
  }

  /// 合并样式配置
  Map<String, dynamic> mergeStyles(
    Map<String, dynamic>? base,
    Map<String, dynamic>? override,
  ) {
    if (base == null) return override ?? {};
    if (override == null) return base;
    
    // 简化的样式合并逻辑
    final result = Map<String, dynamic>.from(base);
    result.addAll(override);
    return result;
  }

  /// 解析基本样式属性
  Map<String, dynamic> parseBasicStyles(String classNames) {
    final result = <String, dynamic>{};
    final classList = parseClassNames(classNames);
    
    for (final className in classList) {
      _parseSingleClass(className, result);
    }
    
    return result;
  }

  void _parseSingleClass(String className, Map<String, dynamic> result) {
    final parts = className.split('-');
    if (parts.isEmpty) return;
    
    final prefix = parts[0];
    
    // 解析常见的样式类
    switch (prefix) {
      case 'p':
        _parseSpacing('padding', parts, result);
        break;
      case 'm':
        _parseSpacing('margin', parts, result);
        break;
      case 'w':
        _parseDimension('width', parts, result);
        break;
      case 'h':
        _parseDimension('height', parts, result);
        break;
      case 'bg':
        _parseColor('backgroundColor', parts, result);
        break;
      case 'color':
        _parseColor('color', parts, result);
        break;
      case 'opacity':
        _parseOpacity(parts, result);
        break;
    }
  }

  void _parseSpacing(String type, List<String> parts, Map<String, dynamic> result) {
    // 简化的间距解析
    if (parts.length >= 2) {
      final value = double.tryParse(parts[1]);
      if (value != null) {
        result[type] = value * 4.0; // Bootstrap spacing unit
      }
    }
  }

  void _parseDimension(String type, List<String> parts, Map<String, dynamic> result) {
    if (parts.length >= 2) {
      final valueStr = parts[1];
      double? value;
      
      if (valueStr.endsWith('px')) {
        value = double.tryParse(valueStr.substring(0, valueStr.length - 2));
      } else if (valueStr.endsWith('%')) {
        final percent = double.tryParse(valueStr.substring(0, valueStr.length - 1));
        if (percent != null) {
          value = percent / 100.0;
        }
      } else {
        value = double.tryParse(valueStr);
      }
      
      if (value != null) {
        result[type] = value;
      }
    }
  }

  void _parseColor(String type, List<String> parts, Map<String, dynamic> result) {
    if (parts.length >= 2) {
      final colorName = parts.sublist(1).join('-');
      // 简化的颜色解析
      final colorMap = {
        'primary': 'blue',
        'secondary': 'gray',
        'success': 'green',
        'danger': 'red',
        'warning': 'yellow',
        'info': 'cyan',
        'light': 'gray',
        'dark': 'black',
        'white': 'white',
        'transparent': 'transparent',
      };
      
      result[type] = colorMap[colorName] ?? colorName;
    }
  }

  void _parseOpacity(List<String> parts, Map<String, dynamic> result) {
    if (parts.length >= 2) {
      final value = double.tryParse(parts[1]);
      if (value != null && value >= 0.0 && value <= 1.0) {
        result['opacity'] = value;
      }
    }
  }

  /// 创建基础的样式配置
  Map<String, dynamic> createStyleConfig({
    String? classNames,
    Map<String, dynamic>? baseStyles,
  }) {
    final config = <String, dynamic>{};
    
    if (baseStyles != null) {
      config.addAll(baseStyles);
    }
    
    if (classNames != null) {
      final parsedStyles = parseBasicStyles(classNames);
      config.addAll(parsedStyles);
    }
    
    return config;
  }
}