

import 'package:illizi/config/storage.dart';

class AccountStorage {
  static const _keyEmail = 'email';

  static saveEmail(String email){
    SecureStorage.writeSecureData(key: _keyEmail, value: email);
  }
  static String? readEmail(){
    print('email');
    return SecureStorage.readSecureData(_keyEmail);
  }
}