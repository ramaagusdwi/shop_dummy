import 'package:intl/intl.dart';

class DateHelper {
  static String dateDisplayPattern = 'MM/dd/yyyy';
  static String dateInputPattern = "yyyy-MM-dd'T'HH:mm:ss.SSSS";

  static String formatDate(
      String date, String inputPattern, String outputPattern) {
    var inputFormat = DateFormat(inputPattern);
    var inputDate = inputFormat.parse(date); // <-- dd/MM 24H format

    var outputFormat = DateFormat(outputPattern);
    return outputFormat.format(inputDate);
  }
}
