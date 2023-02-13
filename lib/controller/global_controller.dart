import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';

class GlobalController extends GetxController {
  //variables
  final RxBool _isLoading = true.obs;
  final RxDouble _latitude = 0.0.obs;
  final RxDouble _longitude = 0.0.obs;

  //instances
  RxBool checkLoading() => _isLoading;
  RxDouble getLatitude() => _latitude;
  RxDouble getLongitude() => _longitude;

  @override
  void onInit() {
    getLocation();
    super.onInit();
  }

  getLocation() async {
    bool isServiceEnabled;
    LocationPermission locationPermission;

    isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    //if location service disabled
    if (!isServiceEnabled) {
      return Future.error("Location services are disabled.");
    }
    //check permission status
    locationPermission = await Geolocator.checkPermission();

    if (locationPermission == LocationPermission.deniedForever) {
      return Future.error(
          "Location permission are permanently denied, we cannot request permissions.");
    } else if (locationPermission == LocationPermission.denied) {
      // request permission
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission == LocationPermission.denied) {
        return Future.error("Location permission denied");
      }
    }

    //get current position
    return await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.lowest)
        .then(
      (value) {
        //update latitude and longitude
        _latitude.value = value.latitude;
        _longitude.value = value.longitude;
      },
    );
  }
}
