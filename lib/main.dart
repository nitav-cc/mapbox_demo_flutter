import 'package:flutter/material.dart';
import 'package:mapbox_demo_2/map_screen.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'token_storage_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await TokenStorageService.saveTokens();

  // final token = await TokenStorageService.getAccessToken();
  // if (token != null) {
  //   MapboxOptions.setAccessToken(token); 
  // }

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MapScreen(),
    );
  }
}
