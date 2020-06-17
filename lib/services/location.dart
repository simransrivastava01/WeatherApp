import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Location();

  Future getCurrentLocation() async {
    try {
      var position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      this.latitude = position.latitude;
      this.longitude = position.longitude;
    } catch (exception) {
      print(exception);
    }
  }
}
