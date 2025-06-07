import 'package:intl/intl.dart';

class NumberFormats {

  static String readbleNumber(double valueNum) {
    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',

    ).format(valueNum);

    return formatterNumber;
  }

}






