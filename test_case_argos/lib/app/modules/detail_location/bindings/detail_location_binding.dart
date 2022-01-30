import 'package:get/get.dart';

import '../controllers/detail_location_controller.dart';

class DetailLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailLocationController>(
      () => DetailLocationController(),
    );
  }
}
