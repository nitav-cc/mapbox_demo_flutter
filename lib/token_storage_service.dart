import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenStorageService {
  static const _storage = FlutterSecureStorage();
  static const _accessTokenKey = 'MAPBOX_ACCESS_TOKEN';
  static const _downloadsTokenKey = 'MAPBOX_DOWNLOADS_TOKEN';

  static Future<void> saveTokens() async {
    await _storage.write(key: _accessTokenKey, value: 'pk.eyJ1IjoiY2hpZGF0bWkiLCJhIjoiY21iYWUzbTZlMHU4ZzJxc2M4d2drYzN2MSJ9.pkIhVIZRTOwRUPmg4ECyPg');
    await _storage.write(key: _downloadsTokenKey, value: 'sk.eyJ1IjoiY2hpZGF0bWkiLCJhIjoiY21iYWU1ZmM1MDRkMzJsc2F1YThxbXY0NCJ9.bt9yIeVfonOiJ-FT6PI_bw');
  }

  static Future<String?> getAccessToken() => _storage.read(key: _accessTokenKey);
  static Future<String?> getDownloadsToken() => _storage.read(key: _downloadsTokenKey);
}
