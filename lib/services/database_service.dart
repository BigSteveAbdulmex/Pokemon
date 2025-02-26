import 'package:shared_preferences/shared_preferences.dart';

class DatabaseService {
  DatabaseService();

  Future<bool?> saveList(String key, List<String> value) async {
    try {
      final SharedPreferences perfs = await SharedPreferences.getInstance();
      bool result = await perfs.setStringList(key, value);
      return result;
    } catch (e) {
      print(e);
    }
    return false;
  }

  Future<List<String>?> getList(String key) async {
    try {
      final SharedPreferences perfs = await SharedPreferences.getInstance();
      List<String>? result = await perfs.getStringList(key);
      return result;
    } catch (e) {
      print(e);
    }
    return null;
  }
}
