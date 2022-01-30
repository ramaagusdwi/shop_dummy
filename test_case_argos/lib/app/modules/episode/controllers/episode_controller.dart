import 'package:get/get.dart';
import 'package:test_case_argos/app/modules/episode/providers/episode_provider.dart';

class EpisodeController extends GetxController {
  //TODO: Implement EpisodeController
  final episodeList = [].obs;
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
    episodeList.clear();
    EpisodeProvider.getEpisodeList(
      onSuccess: (character) {
        episodeList.addAll(character);
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
