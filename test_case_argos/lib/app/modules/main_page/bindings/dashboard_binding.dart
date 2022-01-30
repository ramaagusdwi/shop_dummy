import 'package:get/get.dart';
import '../controllers/main_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
    // Get.lazyPut<CharacterController>(
    //       () => CharacterController(),
    // );
    // Get.lazyPut<LocationController>(
    //       () => LocationController(),
    // );
    // Get.lazyPut<EpisodeController>(
    //       () => EpisodeController(),
    // );
  }
}
