import 'package:get/get.dart';
import 'package:test_case_argos/app/data/models/character.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController

  final characterList = [].obs;
  final _ready = false.obs;
  final _loading = false.obs;

  bool get isReady => _ready.value;

  set isReady(bool val) => _ready.value = val;

  bool get isLoading => _loading.value;

  set isLoading(bool val) => _loading.value = val;

  @override
  void onInit() {
    print("onInit");
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
