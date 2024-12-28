import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:therapiani/core/services/local_presistence/local_persistence.dart';

@Injectable(as: LocalPersistence)
class SharedPreferenceService implements LocalPersistence {

  SharedPreferenceService({required this.sharedPreferences});
  final SharedPreferences sharedPreferences;

  @override
  Future<void> clearData() async {
    await sharedPreferences.clear();
  }

  @override
  Future<void> deleteData(String key) async {
    await sharedPreferences.remove(key);
  }

  @override
  Future<T> getData<T>(String key) async {
    return sharedPreferences.get(key) as T;
  }

  @override
  Future<void> saveData(String key, dynamic data) async {
    switch (data) {
      case int:
        await sharedPreferences.setInt(key, data as int);
      case double:
        await sharedPreferences.setDouble(key, data as double);
      case String:
        await sharedPreferences.setString(key, data as String);
      case bool:
        await sharedPreferences.setBool(key, data as bool);
      case const (List<String>):
        await sharedPreferences.setStringList(key, data as List<String>);
      default:
        throw Exception('Data type not supported');
    }
  }
}
@module
abstract class RegisterModule {
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
