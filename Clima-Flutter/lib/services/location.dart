import 'package:geolocator/geolocator.dart';

class Location{
  double longitude, latitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
      latitude = 0;
      longitude = 0;
    }
  }
}
