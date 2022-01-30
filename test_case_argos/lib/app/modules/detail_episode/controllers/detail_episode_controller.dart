import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:test_case_argos/app/data/models/episode.dart';

class DetailEpisodeController extends GetxController {
  //TODO: Implement DetailEpisodeController
  late Episode episode;
  late var outputDate;

  @override
  void onInit() {
    episode = Get.arguments;
    print("cek ${episode.name}");

    var inputFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSS");
    var inputDate = inputFormat.parse(episode.created); // <-- dd/MM 24H format

    var outputFormat = DateFormat('MM/dd/yyyy');
    outputDate = outputFormat.format(inputDate);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
