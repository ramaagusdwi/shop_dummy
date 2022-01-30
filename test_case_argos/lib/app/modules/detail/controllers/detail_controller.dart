import 'dart:developer';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:test_case_argos/app/data/models/character.dart';
import 'package:test_case_argos/app/helper/utils.dart';
import 'package:test_case_argos/app/modules/character/providers/character_provider.dart';
import 'package:test_case_argos/app/modules/episode/providers/episode_provider.dart';
import 'package:test_case_argos/app/modules/location/providers/location_provider.dart';

class DetailController extends GetxController {
  //TODO: Implement DetailController
  dynamic argumentData = Get.arguments;

  // late Character character;

  final RxString _urlImage = "".obs;

  String get urlImage => _urlImage.value;

  set urlImage(String val) => _urlImage.value = val;

  late String label1;
  late String label2;
  late String label3;
  late String label4;

  final RxString _data1 = "".obs;

  String get data1 => _data1.value;

  set data1(String val) => _data1.value = val;

  final RxString _data2 = "".obs;

  String get data2 => _data2.value;

  set data2(String val) => _data2.value = val;

  final RxString _data3 = "".obs;

  String get data3 => _data3.value;

  set data3(String val) => _data3.value = val;

  final RxString _data4 = "".obs;

  String get data4 => _data4.value;

  set data4(String val) => _data4.value = val;

  final _loading = false.obs;

  bool get isLoading => _loading.value;

  set isLoading(bool val) => _loading.value = val;

  @override
  void onInit() {
    print(argumentData);
    // character = argumentData;
    // print(character.url);
    label1 = "Name";
    label4 = "Created At";

    if (argumentData[0]['flag'] == "location") {
      //hit api lokasi detail
      label2 = "air date";
      label3 = "dimension";
      fetchLokasiDetail(id: argumentData[1]['id']);
      urlImage = 'assets/images/placeholder.png';
    } else if (argumentData[0]['flag'] == "episode") {
      //hit api episode detail
      label2 = "type";
      label3 = "episode";
      fetchEpisodeDetail(id: argumentData[1]['id']);
      urlImage = 'assets/images/movie.png';
    } else {
      //character flag type

      label2 = "status";
      label3 = "species";
      fetchCharacterDetail(id: argumentData[1]['id']);
    }
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void fetchEpisodeDetail({required int id}) {
    log("fetchChar");
    isLoading = true;
    update();

    EpisodeProvider.getEpisodeDetail(
      id: id,
      onSuccess: (episodes) {
        data1 = episodes.name;
        data2 = episodes.airDate;
        data3 = episodes.episode;
        data4 = DateHelper.formatDate(episodes.created,
            DateHelper.dateInputPattern, DateHelper.dateDisplayPattern);

        isLoading = false;
        update();
      },
      onError: (error) {
        isLoading = false;
        update();
        print("Error");
      },
    );
  }

  void fetchLokasiDetail({required int id}) {
    log("fetchChar");
    isLoading = true;
    update();

    LocationProvider.getLocationDetail(
      id: id,
      onSuccess: (location) {
        data1 = location.name!;
        data2 = location.type!;
        data3 = location.dimension!;
        data4 = DateHelper.formatDate(location.created!,
            DateHelper.dateInputPattern, DateHelper.dateDisplayPattern);

        isLoading = false;
        update();
      },
      onError: (error) {
        isLoading = false;
        update();
        print("Error");
      },
    );
  }

  void fetchCharacterDetail({required int id}) {
    log("fetchChar");
    isLoading = true;
    update();

    CharacterProvider.getCharacterDetail(
      id: id,
      onSuccess: (character) {
        urlImage = character.image!;
        data1 = character.name;
        data2 = character.status;
        data3 = character.species;
        data4 = DateHelper.formatDate(character.created,
            DateHelper.dateInputPattern, DateHelper.dateDisplayPattern);

        isLoading = false;
        update();
      },
      onError: (error) {
        isLoading = false;
        update();
        print("Error");
      },
    );
  }
}
