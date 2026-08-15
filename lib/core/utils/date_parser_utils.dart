import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

class DateParserUtils {

  static DateTime? parseToLocalDateTime(String? dateStr) {
    if (dateStr == null || dateStr.trim().isEmpty) return null;
    try {
      String cleanStr = dateStr.trim();
      if (!cleanStr.contains('T') && cleanStr.contains(' ')) {
        cleanStr = cleanStr.replaceFirst(' ', 'T');
      }
      DateTime parsed = DateTime.parse(cleanStr);
      if (!parsed.isUtc && !cleanStr.endsWith('Z') && !cleanStr.contains('+')) {
        parsed = DateTime.utc(
          parsed.year,
          parsed.month,
          parsed.day,
          parsed.hour,
          parsed.minute,
          parsed.second,
          parsed.millisecond,
          parsed.microsecond,
        );
      }
      return parsed.toLocal();
    } catch (e) {
      debugPrint('DateParserUtils Error parsing date: $dateStr -> $e');
      return null;
    }
  }

  static String getDayOfWeek(DateTime date) => DateFormat.E('ar').format(date.toLocal());
  static String getDayOfMonth(DateTime date) => DateFormat('dd').format(date.toLocal());

  static String getMonth(DateTime date) => DateFormat.MMMM('ar').format(date.toLocal()) + ' , ' + DateFormat('yyyy').format(date.toLocal());

  static String getDate(DateTime date) => DateFormat('yyyy-MM-dd').format(date.toLocal());

  static String getDateWithTime(DateTime? date) {
    if (date != null) {
      return DateFormat('yyyy-MM-dd hh:mm a', 'ar').format(date.toLocal());
    }
    return '';
  }

  static Future<String> getDatePicker(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      return picked.toIso8601String().split('T').first;
    }

    return '';
  }

  static String getDateSearch(DateTime? date) {
    if (date != null) {
      return DateFormat('yyyy-MM-dd 00:00').format(date.toLocal());
    }
    return '';
  }

  static String getDateFromString(String? datetimeString) {
    final dt = parseToLocalDateTime(datetimeString);
    if (dt != null) {
      return DateFormat('yyyy-MM-dd').format(dt);
    }
    return '';
  }

  static String getDateWithTimeFromString(String? datetimeString) {
    final dt = parseToLocalDateTime(datetimeString);
    if (dt != null) {
      return DateFormat('yyyy-MM-dd hh:mm a', 'ar').format(dt);
    }
    return '';
  }

  static String getTimeFromString(String? datetimeString) {
    final dt = parseToLocalDateTime(datetimeString);
    if (dt != null) {
      return DateFormat('hh:mm a', 'ar').format(dt);
    }
    return '';
  }

  static String getTime(DateTime? date) {
    if (date != null) {
      return DateFormat('hh:mm a', 'ar').format(date.toLocal());
    }
    return '';
  }

  static int numberDaysBetweenDates(DateTime? from, DateTime? to) {
    if (from != null && to != null) {
      return to.difference(from).inDays;
    }
    return 0;
  }

  static bool checkDateBetweenDates(DateTime? from, DateTime? to) {
    DateTime now = DateTime.now();
    if (from != null && to != null) {
      if ((from.isBefore(now) || from.isAtSameMomentAs(now)) && (to.isAfter(now) || to.isAtSameMomentAs(now))) {
        return true;
      }
    }
    return false;
  }

  static List<int> yearList() {
    int currentYear = DateTime.now().year;
    int startingYear = 2000;
    return List.generate((currentYear - startingYear) + 8, (index) => startingYear + index);
  }

  static String timeAgoFormat(String? date, {String locale = 'ar'}) {
    final dt = parseToLocalDateTime(date);
    if (dt != null) {
      return timeago.format(dt, locale: locale);
    }
    return '';
  }

  static Future<String> getDateFormattedController(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      return DateFormat('yyyy-MM-dd').format(pickedDate);
    } else {
      return '';
    }
  }
}