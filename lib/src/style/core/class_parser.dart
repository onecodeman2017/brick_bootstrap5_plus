import 'package:flutter/material.dart';

class ParsedClass {
  final String prefix;
  final String? breakpoint;
  final String? modifier;
  final String value;

  const ParsedClass({
    required this.prefix,
    this.breakpoint,
    this.modifier,
    required this.value,
  });

  @override
  String toString() {
    final parts = [prefix];
    if (breakpoint != null) parts.add(breakpoint!);
    if (modifier != null) parts.add(modifier!);
    parts.add(value);
    return parts.join('-');
  }
}

// 预编译的正则表达式，提高解析性能
class ClassNameParser {
  // 优化的正则表达式，减少回溯
  static final RegExp _classRegex =
      RegExp(r'^([a-zA-Z]+)(?:-([a-zA-Z]+))?(?:-([a-zA-Z]+))?(?:-(.+))?$');

  // 缓存已解析的类名，避免重复解析
  static final Map<String, ParsedClass?> _parsedClassCache = {};
  static const int _maxCacheSize = 500; // 限制缓存大小
  
  // 缓存类名验证结果，避免重复验证
  static final Map<String, bool> _validationCache = {};
  static const int _maxValidationCacheSize = 1000;

  static ParsedClass? parse(String className) {
    if (className.isEmpty) return null;

    // 检查缓存
    if (_parsedClassCache.containsKey(className)) {
      return _parsedClassCache[className];
    }

    final match = _classRegex.firstMatch(className);
    ParsedClass? result;

    if (match != null) {
      final prefix = match.group(1)!;
      final breakpoint = match.group(2);
      final modifier = match.group(3);
      final value = match.group(4) ?? '';

      result = ParsedClass(
        prefix: prefix,
        breakpoint: breakpoint,
        modifier: modifier,
        value: value,
      );
    }

    // 管理缓存大小
    if (_parsedClassCache.length >= _maxCacheSize) {
      _parsedClassCache.remove(_parsedClassCache.keys.first);
    }

    _parsedClassCache[className] = result;
    return result;
  }

  static bool isValidClassName(String className) {
    if (className.isEmpty) return false;
    
    // 检查缓存
    if (_validationCache.containsKey(className)) {
      return _validationCache[className]!;
    }
    
    final result = !className.contains(RegExp(r'[^\w\-\s]')) &&
        _classRegex.hasMatch(className);
    
    // 管理缓存大小
    if (_validationCache.length >= _maxValidationCacheSize) {
      _validationCache.remove(_validationCache.keys.first);
    }
    
    _validationCache[className] = result;
    return result;
  }

  static List<String> splitClassNames(String classNames) {
    if (classNames.trim().isEmpty) return [];

    return classNames
        .trim()
        .split(RegExp(r'\s+'))
        .where((name) => name.isNotEmpty && isValidClassName(name))
        .toList();
  }

  // 清除缓存
  static void clearCache() {
    _parsedClassCache.clear();
    _validationCache.clear();
  }
}

class ColorParser {
  // 颜色缓存
  static final Map<String, Color?> _colorCache = {};
  static const int _maxColorCacheSize = 200;

  static Color? parseColor(String colorName) {
    if (colorName.isEmpty) return null;

    // 检查缓存
    if (_colorCache.containsKey(colorName)) {
      return _colorCache[colorName];
    }

    Color? result;

    // Handle hex colors
    if (colorName.startsWith('#')) {
      try {
        result = Color(int.parse(colorName.substring(1), radix: 16));
      } catch (e) {
        result = null;
      }
    } else {
      // Handle Material colors and special colors
      result = _parseNamedColor(colorName);
    }

    // 管理缓存大小
    if (_colorCache.length >= _maxColorCacheSize) {
      _colorCache.remove(_colorCache.keys.first);
    }

    _colorCache[colorName] = result;
    return result;
  }

  static Color? _parseNamedColor(String colorName) {
    // Handle Material colors
    if (colorName == 'transparent') return Colors.transparent;
    if (colorName == 'black') return Colors.black;
    if (colorName == 'white') return Colors.white;
    if (colorName == 'red') return Colors.red;
    if (colorName == 'green') return Colors.green;
    if (colorName == 'blue') return Colors.blue;

    // Handle special colors from the original system
    switch (colorName) {
      case 'fg':
        return const Color(0xFF212529);
      case 'bg':
        return const Color(0xFFFFFFFF);
      case 'select':
        return const Color(0xFF495057);
      case 'selectBg':
        return const Color(0xFFE9ECEF);
      case 'fff':
      case 'ffffff':
        return const Color(0xFFFFFFFF);
      case 'FFDFE2E6':
        return const Color(0xFFDFE2E6);
    }

    // Handle colors like 'black87', 'black54', etc.
    if (colorName.startsWith('black')) {
      final opacity = colorName.substring(5);
      switch (opacity) {
        case '87':
          return Colors.black87;
        case '54':
          return Colors.black54;
        case '45':
          return Colors.black45;
        case '38':
          return Colors.black38;
        case '26':
          return Colors.black26;
        case '12':
          return Colors.black12;
      }
    }

    return null;
  }

  // 清除颜色缓存
  static void clearColorCache() {
    _colorCache.clear();
  }
}

class UnitParser {
  // 单位值缓存
  static final Map<String, double?> _valueCache = {};
  static const int _maxValueCacheSize = 300;

  static double? parseValue(String value, {String? unit}) {
    if (value.isEmpty) return null;

    // 构造缓存键
    final cacheKey = '$value|$unit';

    // 检查缓存
    if (_valueCache.containsKey(cacheKey)) {
      return _valueCache[cacheKey];
    }

    double? result;

    // Handle px values
    if (unit == 'px' || value.endsWith('px')) {
      final cleanValue =
          value.endsWith('px') ? value.substring(0, value.length - 2) : value;
      result = double.tryParse(cleanValue);
    }
    // Handle percentage values
    else if (unit == '%' || value.endsWith('%')) {
      final cleanValue =
          value.endsWith('%') ? value.substring(0, value.length - 1) : value;
      final percentage = double.tryParse(cleanValue);
      result = percentage != null ? percentage / 100.0 : null;
    }
    // Handle regular numeric values
    else {
      result = double.tryParse(value);
    }

    // 管理缓存大小
    if (_valueCache.length >= _maxValueCacheSize) {
      _valueCache.remove(_valueCache.keys.first);
    }

    _valueCache[cacheKey] = result;
    return result;
  }

  static bool isPercentage(String value) {
    return value.endsWith('%');
  }

  static bool isPixel(String value) {
    return value.endsWith('px');
  }

  // 清除单位值缓存
  static void clearValueCache() {
    _valueCache.clear();
  }
}
