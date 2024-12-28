import 'package:injectable/injectable.dart';
import 'package:therapiani/core/constants/storage_constants.dart';
import 'package:therapiani/core/services/local_presistence/local_persistence.dart';
import 'package:therapiani/core/services/local_presistence/shared_preferences.dart';

@LazySingleton()
class AppStorage {

  AppStorage(this._localPersist);

  final LocalPersistence _localPersist;

  Future<String> get accessToken async =>
      _localPersist
          .getData<String>(StorageConstants.accessToken.name);

  Future<String> get refreshToken async =>
      _localPersist
          .getData<String>(StorageConstants.refreshToken.name);


  Future<void> setAccessToken(String value) async =>
      _localPersist.saveData(
          StorageConstants.accessToken.name, value) ;

  Future<void> setRefreshToken(String value) async =>
      _localPersist.saveData(
          StorageConstants.refreshToken.name, value) ;

}
