import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

class DateParserUtils {
  // note : call await initializeDateFormatting(); in --> main,dart

  //static String getDayOfWeek(DateTime date) => DateFormat('EEE','ar').format(date);
  static String getDayOfWeek(DateTime date) => DateFormat.E('ar').format(date);
  static String getDayOfMonth(DateTime date) => DateFormat('dd').format(date);

  //static String getMonth(DateTime date) => DateFormat('MMMM, yyyy').format(date);
  static String getMonth(DateTime date) => DateFormat.MMMM('ar').format(date) +' , '+DateFormat('yyyy').format(date);

  static String getDate(DateTime date) => DateFormat('yyyy-MM-dd').format(date);

  static String getDateWithTime(DateTime? date) {
    if(date != null)
      return DateFormat('yyyy-MM-dd hh:mm').format(date);
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
    if(date != null)
      return DateFormat('yyyy-MM-dd 00:00').format(date);
    return '';
  }

  static String getDateFromString(String? datetimeString) {
    if(datetimeString != null && datetimeString != '' )
      return DateFormat('yyyy-MM-dd').format(DateFormat('yyyy-MM-dd').parse(datetimeString));
    return '';
  }

  static String getDateWithTimeFromString(String? datetimeString) {
    if(datetimeString != null && datetimeString != '' )
      return DateFormat('yyyy-MM-dd hh:mm').format(DateFormat('yyyy-MM-dd hh:mm').parse(datetimeString));
    return '';
  }

  static String getTimeFromString(String? datetimeString) {
    if(datetimeString != null && datetimeString != '' )
      return DateFormat('hh:mm').format(DateFormat('yyyy-MM-dd hh:mm').parse(datetimeString));
    return '';
  }

  static String getTime(DateTime? date) {
    if(date != null)
      return DateFormat('hh:mm').format(date);
    return '';
  }

  static int numberDaysBetweenDates(DateTime? from, DateTime? to) {
    if(from !=null && to !=null)
      return to.difference(from).inDays;
    return 0;
  }

  static bool checkDateBetweenDates(DateTime? from, DateTime? to) {
    DateTime _now = DateTime.parse(DateParserUtils.getDate(DateTime.now()));
    if(from !=null && to !=null) {
      if ((from.isBefore(_now) || from.isAtSameMomentAs(_now)) && (to.isAfter(_now) || to.isAtSameMomentAs(_now))){
        print('checkDateBetweenDates--------true-----');
        return true;
      }
    }
    print('checkDateBetweenDates--------false-----');
    return false;
  }

  static List<int> yearList(){
    int currentYear = DateTime.now().year;
    int startingYear = 2000;
    return List.generate((currentYear-startingYear)+8, (index) => startingYear+index);
  }

  static String timeAgoFormat(String? date, {String locale = 'ar'}) {
    if(date != null && date.isNotEmpty)
      return timeago.format(DateTime.parse(date),locale: locale);
    return '';
  }

  static Future<String> getDateFormattedController(BuildContext context ) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime(2100));

    if (pickedDate != null) {
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      print(formattedDate); //formatted date output using intl package =>  2021-03-16
      return formattedDate;
    } else {
      return '';
    }
  }

}