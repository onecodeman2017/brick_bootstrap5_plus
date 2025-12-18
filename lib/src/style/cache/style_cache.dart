part of '../style.dart';

// 样式缓存工具类
class StyleCache {
  static final Map<String, Map<String, dynamic>> _cache = {};
  static const int _maxCacheSize = 1000;

  static dynamic getStyle(String key) {
    return _cache[key];
  }

  static void cacheStyle(String key, dynamic style) {
    if (_cache.length >= _maxCacheSize) {
      _cache.remove(_cache.keys.first);
    }
    _cache[key] = style;
  }

  static void clear() {
    _cache.clear();
  }

  static int get cacheSize => _cache.length;
}