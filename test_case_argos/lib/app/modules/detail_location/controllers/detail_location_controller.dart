import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:test_case_argos/app/data/models/location.dart';

class DetailLocationController extends GetxController {
  //TODO: Implement DetailLocationController
  late Location location;
  late var outputDate;

  @override
  void onInit() {
    location = Get.arguments;
    print("cek ${location.name}");

    var inputFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSS");
    var inputDate =
        inputFormat.parse(location.created!); // <-- dd/MM 24H format

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
