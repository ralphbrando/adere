import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

List<dynamic> sortFilesList(
  String type,
  List<dynamic> filesList,
) {
  switch (type) {
    case 'az':
      filesList.sort((a, b) => a['name'].compareTo(b['name']));
      break;
    case 'za':
      filesList.sort((a, b) => b['name'].compareTo(a['name']));
      break;
    case 'dateAsc':
      filesList.sort((a, b) => a['date'].compareTo(b['date']));
      break;
    case 'dateDesc':
      filesList.sort((a, b) => b['date'].compareTo(a['date']));
      break;
  }
  return filesList;
}

bool fileTypeChecker(String filePath) {
  if (filePath.substring(filePath.length - 3) == 'pdf') {
    return true;
  }
  return false;
}

int randomRotateValue() {
  return 90 * math.Random().nextInt(4);
}

double getFontSize(String size) {
  return (250 * double.parse(size));
}

List<AgirStruct> getAgirStatusList(List<dynamic> agirItems) {
  List<AgirStruct> agirStatus = [];

  for (final item in agirItems) {
    if (item["layout"] == "agir") {
      agirStatus
          .add(AgirStruct(number: item["attributes"]["number"], isRead: false));
    }
  }

  return agirStatus;
}

List<AgirStruct> updateAgirStatusList(
  List<AgirStruct> agirStatusList,
  String number,
) {
  final updateIndex =
      agirStatusList.indexWhere((agir) => agir.number == number);
  agirStatusList[updateIndex].isRead = true;

  return agirStatusList;
}

List<String> getDaysAvailable(UserPackagesRow? userpackage) {
  /// Check if the userpackage is null
  if (userpackage == null) {
    return [];
  }

  /// Define the mapping of days and their corresponding French day names
  Map<String, String> daysInFrench = {
    'take_monday': 'Lundi',
    'take_tuesday': 'Mardi',
    'take_wednesday': 'Mercredi',
    'take_thursday': 'Jeudi',
    'take_friday': 'Vendredi',
    'take_saturday': 'Samedi',
    'take_sunday': 'Dimanche',
  };

  /// Initialize an empty list to store the selected French day names
  List<String> selectedDays = [];

  /// Add the French day names if the corresponding field is set to 1
  if (userpackage.takeMonday == 1)
    selectedDays.add(daysInFrench['take_monday']!);
  if (userpackage.takeTuesday == 1)
    selectedDays.add(daysInFrench['take_tuesday']!);
  if (userpackage.takeWednesday == 1)
    selectedDays.add(daysInFrench['take_wednesday']!);
  if (userpackage.takeThursday == 1)
    selectedDays.add(daysInFrench['take_thursday']!);
  if (userpackage.takeFriday == 1)
    selectedDays.add(daysInFrench['take_friday']!);
  if (userpackage.takeSaturday == 1)
    selectedDays.add(daysInFrench['take_saturday']!);
  if (userpackage.takeSunday == 1)
    selectedDays.add(daysInFrench['take_sunday']!);

  /// Return the list of selected days in French
  return selectedDays;
}

List<String> getHoursAvailableToTakePills() {
  // Initialize an empty list to store the quarter-hour intervals
  List<String> quarterHourTimes = [];

  // Generate times in 15-minute intervals
  for (int hour = 0; hour < 24; hour++) {
    for (int minute = 0; minute < 60; minute += 15) {
      // Format the time as HH:mm
      String time =
          '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
      // Add the time to the list
      quarterHourTimes.add(time);
    }
  }

  // Return the list of quarter-hour intervals
  return quarterHourTimes;
}

List<String>? howManyUnit() {
  // Define a list of options from 1 to 30 as strings
  List<String> options = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30"
  ];

  // Return the list of options
  return options;
}

String? getTimeOnly(DateTime? date) {
  /// Check if dateTime is null
  if (date == null) {
    return "";
  }

  /// Create a new DateTime with just the hour and minute parts
  return DateFormat('HH:mm').format(date);
}

String? getCurrentNextPreviousDay(
  String? what,
  String? now,
) {
  // Check if the `now` string is provided and not empty, otherwise set the current date
  DateTime currentDate;
  if (now != null && now.isNotEmpty) {
    // Parse the provided date string (dd/MM/yyyy)
    currentDate = DateFormat('dd/MM/yyyy').parse(now);
  } else {
    currentDate = DateTime.now();
  }

  // Handle the logic based on the `what` parameter
  if (what == "next") {
    currentDate = currentDate.add(Duration(days: 1));
  } else if (what == "previous") {
    currentDate = currentDate.subtract(Duration(days: 1));
  }

  // Format the date in European format (dd/MM/yyyy)
  String formattedDate = DateFormat('dd/MM/yyyy').format(currentDate);

  // Return the formatted date
  return formattedDate;
}

String? getToday(String? now) {
  /// Check if the dateStr is null or empty
  if (now == null || now.isEmpty) {
    return "";
  }

  try {
    /// Parse the date from the string in 'dd/MM/yyyy' format
    DateTime date = DateFormat('dd/MM/yyyy').parse(now);

    /// Return the day of the week in lowercase (e.g., "monday", "tuesday")
    return DateFormat('EEEE').format(date).toLowerCase();
  } catch (e) {
    /// Return null if parsing fails
    return null;
  }
}

String? substract2numbers(
  int? number1,
  int? number2,
) {
  /// Check if either number is null
  if (number1 == null || number2 == null) {
    return null;
  }

  /// Perform the subtraction and return the result as a string
  int result = number1 - number2;
  return result.toString();
}

dynamic filterNames(
  dynamic userillnesses,
  dynamic illnesses,
) {
  // Initialize an empty list to store filtered illnesses
  List<Map<String, dynamic>> filteredIllnesses = [];

  // Loop through each illness in the illnesses list
  for (var illness in illnesses) {
    // Check if illness is not null and has a name
    if (illness != null && illness['name'] != null) {
      // Check if this illness name exists in the userIllnesses based on the name
      bool foundInUserIllnesses = userillnesses.any((userIllness) =>
          userIllness != null &&
          userIllness['name'] != null &&
          userIllness['name'] == illness['name']);

      // If not found in userIllnesses, add to the filteredIllnesses list
      if (!foundInUserIllnesses) {
        filteredIllnesses.add(illness);
      }
    }
  }

  // Return the filtered illnesses as a JSON-compatible list
  return jsonEncode(filteredIllnesses);
}

String? add2numbers(
  int? number1,
  int? number2,
) {
  /// Check if either number is null
  if (number1 == null || number2 == null) {
    return null;
  }

  /// Perform the addition and return the result as a string
  int result = number1 + number2;
  return result.toString();
}

dynamic eventFromOtherSource(List<SaisieMoodStruct>? moods) {
  if (moods == null || moods.isEmpty) {
    return null; // Return null if there are no moods
  }

  // Create a map to group events by date
  Map<String, List<Map<String, dynamic>>> eventsByDate = {};

  // Loop through each mood and add it to the corresponding date
  for (var mood in moods) {
    // Ensure that the mood has a valid user, mood, and date
    if (mood.user != null && mood.mood != null && mood.date != null) {
      // Format the date as a string to use as a key
      String formattedDate = DateFormat('yyyy-MM-dd').format(mood.date!);

      // Create an event object
      Map<String, dynamic> event = {
        'user': mood.user,
        'mood': mood.mood,
        'date': mood.date
      };

      // Add the event to the list for the corresponding date
      if (eventsByDate.containsKey(formattedDate)) {
        eventsByDate[formattedDate]!.add(event);
      } else {
        eventsByDate[formattedDate] = [event];
      }
    }
  }

  // Convert the map to JSON and return it
  return jsonEncode(eventsByDate);
}
