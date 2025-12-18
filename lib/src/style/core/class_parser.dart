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

class ClassNameParser {
  static final RegExp _classRegex = RegExp(r'^([a-zA-Z]+)(?:-([a-zA-Z]+))?(?:-([a-zA-Z]+))?(?:-(.+))?$');
  
  static ParsedClass? parse(String className) {
    if (className.isEmpty) return null;
    
    final match = _classRegex.firstMatch(className);
    if (match == null) return null;

    final prefix = match.group(1)!;
    final breakpoint = match.group(2);
    final modifier = match.group(3);
    final value = match.group(4) ?? '';

    return ParsedClass(
      prefix: prefix,
      breakpoint: breakpoint,
      modifier: modifier,
      value: value,
    );
  }

  static bool isValidClassName(String className) {
    return className.isNotEmpty && 
           !className.contains(RegExp(r'[^\w\-\s]')) &&
           _classRegex.hasMatch(className);
  }

  static List<String> splitClassNames(String classNames) {
    if (classNames.trim().isEmpty) return [];
    
    return classNames
        .trim()
        .split(RegExp(r'\s+'))
        .where((name) => name.isNotEmpty && isValidClassName(name))
        .toList();
  }
}

class ColorParser {
  static Color? parseColor(String colorName) {
    if (colorName.isEmpty) return null;

    // Handle hex colors
    if (colorName.startsWith('#')) {
      try {
        return Color(int.parse(colorName.substring(1), radix: 16));
      } catch (e) {
        return null;
      }
    }

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

    // Try to parse as a Material color property
    try {
      // Handle colors like 'black87', 'black54', etc.
      if (colorName.startsWith('black')) {
        final opacity = colorName.substring(5);
        switch (opacity) {
          case '87': return Colors.black87;
          case '54': return Colors.black54;
          case '45': return Colors.black45;
          case '38': return Colors.black38;
          case '26': return Colors.black26;
          case '12': return Colors.black12;
        }
      }
    } catch (e) {
      return null;
    }

    return null;
  }
}

class UnitParser {
  static double? parseValue(String value, {String? unit}) {
    if (value.isEmpty) return null;

    // Handle px values
    if (unit == 'px' || value.endsWith('px')) {
      final cleanValue = value.endsWith('px') ? value.substring(0, value.length - 2) : value;
      return double.tryParse(cleanValue);
    }

    // Handle percentage values
    if (unit == '%' || value.endsWith('%')) {
      final cleanValue = value.endsWith('%') ? value.substring(0, value.length - 1) : value;
      final percentage = double.tryParse(cleanValue);
      return percentage != null ? percentage / 100.0 : null;
    }

    // Handle regular numeric values
    return double.tryParse(value);
  }

  static bool isPercentage(String value) {
    return value.endsWith('%');
  }

  static bool isPixel(String value) {
    return value.endsWith('px');
  }
}