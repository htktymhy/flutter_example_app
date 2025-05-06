import 'package:hive/hive.dart';

class HiveService {
  static final _box = Hive.box('myBox');

  static void setValue(String key, String value) {
    _box.put(key, value);
  }

  static String? getValue(String key) {
    return _box.get(key);
  }
}
