# mapbox_demo_2

A Flutter application demonstrating Mapbox integration, secure token storage, and map display.

## Features
- Displays a Mapbox map centered on Ahmedabad, India.
- Securely stores and retrieves Mapbox access tokens using `flutter_secure_storage`.
- Handles asynchronous token setup before rendering the map.
- Shows a loading indicator while initializing.

## Getting Started

### Prerequisites
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- A valid Mapbox access token (demo tokens are pre-set in the code for testing purposes)

### Installation
1. Clone this repository:
   ```sh
   git clone https://github.com/nitav-cc/mapbox_demo_flutter.git
   cd mapbox_demo_flutter
   ```
2. Install dependencies:
   ```sh
   flutter pub get
   ```
3. Run the app:
   ```sh
   flutter run
   ```

## Project Structure
- `lib/main.dart`: App entry point.
- `lib/map_screen.dart`: Main screen displaying the Mapbox map.
- `lib/token_storage_service.dart`: Handles secure storage and retrieval of Mapbox tokens.

## Dependencies
- [mapbox_maps_flutter](https://pub.dev/packages/mapbox_maps_flutter)
- [flutter_secure_storage](https://pub.dev/packages/flutter_secure_storage)
- [cupertino_icons](https://pub.dev/packages/cupertino_icons)

## Notes
- The app uses demo Mapbox tokens stored in `token_storage_service.dart`. For production, replace these with your own tokens and manage them securely.
- The map is centered on Ahmedabad, India by default. You can change the coordinates in `map_screen.dart`.

## License
This project is for demonstration purposes. Please check Mapbox's terms of service for usage restrictions.
