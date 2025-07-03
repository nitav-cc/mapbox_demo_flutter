import 'package:flutter/material.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'token_storage_service.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  bool _mapReady = false;

  @override
  void initState() {
    super.initState();
    _setupMapboxToken();

  }

  Future<void> _setupMapboxToken() async {
    await TokenStorageService.saveTokens();
    final token = await TokenStorageService.getAccessToken();

    if (token != null) {
      // ✅ Must be called BEFORE rendering MapWidget
      MapboxOptions.setAccessToken(token);
      setState(() {
        _mapReady = true;
      });
    } else {
      // Optional: handle null token case
      print("Access token not found.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _mapReady
          ? MapWidget(
              key: const ValueKey("mapWidget"),
              cameraOptions: CameraOptions(
                center: Point(coordinates: Position(72.5714, 23.0225)),
                zoom: 12.0,
              ),
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
