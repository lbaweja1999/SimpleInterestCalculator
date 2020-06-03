import 'package:intl/intl.dart';

class Format {
  static String numberformat(double result) {
    NumberFormat numberFormat =
        NumberFormat.currency(locale: "en_US", symbol: "\$", decimalDigits: 2);
    String formatted_result = numberFormat.format(result);
    return formatted_result;
  }
}
