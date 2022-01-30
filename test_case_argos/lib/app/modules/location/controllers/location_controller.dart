import 'package:get/get.dart';
import 'package:test_case_argos/app/modules/location/providers/location_provider.dart';

class LocationController extends GetxController {
  //TODO: Implement LocationController
  final locationList = [].obs;
  final _ready = false.obs;
  final _loading = false.obs;

  bool get isReady => _ready.value;

  set isReady(bool val) => _ready.value = val;

  bool get isLoading => _loading.value;

  set isLoading(bool val) => _loading.value = val;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    locationList.clear();
    LocationProvider.getLocationList(
      onSuccess: (character) {
        locationList.addAll(character);
        isLoading = false;
        update();
      },
      onError: (error) {
        isLoading = false;
        update();
        print("Error");
      },
    );
    isReady = true;
  }

  @override
  void onClose() {}
}
