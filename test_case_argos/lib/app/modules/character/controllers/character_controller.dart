import 'dart:developer';

import 'package:get/get.dart';
import 'package:test_case_argos/app/modules/main_page/providers/main_provider.dart';

class CharacterController extends GetxController {
  //TODO: Implement CharacterController
  final characterList = [].obs;
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
    onRefresh();
    isReady = true;
  }

  @override
  void onClose() {}

  void onFilter({required String name}) {
    characterList.clear();
    isLoading = true;
    update();
    fetchCharacter(name: name);
  }

  void onRefresh() {
    isLoading = true;
    update();
    characterList.clear();
    fetchCharacter(name: '');
  }

  void fetchCharacter({required String name}) {
    log("fetchChar");
    DashboardProvider.getCharacterList(
      onSuccess: (character) {
        characterList.addAll(character);
        isLoading = false;
        update();
      },
      onError: (error) {
        isLoading = false;
        update();
        print("Error");
      },
      params: {"name": name},
    );
  }
}
