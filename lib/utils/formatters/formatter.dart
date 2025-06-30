import 'package:intl/intl.dart';

class CFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date); //Tùy chỉnh định dạng ngày theo yêu cầu.
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount); //Tùy chỉnh ngôn ngữ và ký hiệu tiền tệ theo yêu cầu.
  }

// Giả sử định dạng số điện thoại 10 chữ số của Hoa Kỳ: (123) 456-7890
  static String formatPhoneNumber(String phoneNumber) {
// Giả sử định dạng số điện thoại 10 chữ số của Hoa Kỳ: (123) 456-7890
  if(phoneNumber.length == 10) {
    return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
  } else if (phoneNumber.length == 11) {
    return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
  }
// Thêm logic định dạng số điện thoại tùy chỉnh cho các định dạng khác nếu cần
  return phoneNumber;
  }
  //Xóa bỏ mọi ký tự không phải số khỏi số điện thoại.
  static String internationalFormatPhoneNumber(String phoneNumber) {

    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode) ');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '+1') {
        groupLength = 3;
      }

      int end = i + groupLength;
      formattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedNumber.write(' ');
      }

      i = end;
    }
    return formattedNumber.toString();
  }

}