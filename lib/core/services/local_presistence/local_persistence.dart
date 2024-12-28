


abstract class LocalPersistence {
  Future<void> saveData(String key, dynamic data);
  Future<void> deleteData(String key);
  Future<T> getData<T>(String key);
  Future<void> clearData();
}