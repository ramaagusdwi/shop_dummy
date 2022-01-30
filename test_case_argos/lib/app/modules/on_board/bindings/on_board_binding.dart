import 'package:get/get.dart';
import 'package:test_case_argos/app/modules/character/controllers/character_controller.dart';
import 'package:test_case_argos/app/modules/episode/controllers/episode_controller.dart';
import 'package:test_case_argos/app/modules/location/controllers/location_controller.dart';

import '../controllers/on_board_controller.dart';

class OnBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnBoardController>(
      () => OnBoardController(),
    );
    Get.lazyPut<CharacterController>(
      () => CharacterController(),
    );
    Get.lazyPut<LocationController>(
      () => LocationController(),
    );
    Get.lazyPut<EpisodeController>(
      () => EpisodeController(),
    );
  }
}
