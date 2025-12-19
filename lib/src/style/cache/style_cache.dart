part of '../style.dart';

// 样式缓存工具类 - 优化版
class StyleCache {
  static final Map<String, dynamic> _cache = {};
  static const int _maxCacheSize = 700; // 降低最大缓存数量，避免内存占用过高
  static final List<String> _cacheKeys = []; // 维护LRU顺序

  static dynamic getStyle(String key) {
    final value = _cache[key];
    if (value != null) {
      // LRU: 将访问的key移到末尾
      _cacheKeys.remove(key);
      _cacheKeys.add(key);
    }
    return value;
  }

  static void cacheStyle(String key, dynamic style) {
    // 如果key已存在，先移除
    if (_cache.containsKey(key)) {
      _cacheKeys.remove(key);
    } else {
      // 检查是否需要清理缓存
      if (_cache.length >= _maxCacheSize) {
        final oldestKey = _cacheKeys.removeAt(0);
        _cache.remove(oldestKey);
      }
    }

    // 添加新key到末尾
    _cache[key] = style;
    _cacheKeys.add(key);
  }

  static void clear() {
    _cache.clear();
    _cacheKeys.clear();
  }

  static int get cacheSize => _cache.length;
}
