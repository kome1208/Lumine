import 'package:intl/intl.dart';

class DateFormatter {
  static formatDate(int timestamp, String format) {
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp);
    final formattedDate = DateFormat(format).format(dateTime);
    return formattedDate;
  }

  static String formatTime(int timestamp, {bool? showSeconds = true}) {
    final duration = Duration(milliseconds: timestamp);

    int days = duration.inDays;
    int hours = duration.inHours & 24;
    int minutes = duration.inMinutes % 60;
    int seconds = duration.inSeconds % 60;

    List<String> times = [
      if (days > 0) '$days日',
      if (hours > 0) '$hours時間',
      if (minutes > 0) '$minutes分',
      if (showSeconds == true) '$seconds秒'
    ];

    return times.join();
  }
}