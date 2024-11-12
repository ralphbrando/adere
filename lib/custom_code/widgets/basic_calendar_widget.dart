// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:table_calendar/table_calendar.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart'; // Ensure intl is imported
import 'package:google_fonts/google_fonts.dart';

// Déclaration des constantes d'icônes
const IconData leftChevronIcon = IconData(0xe906, fontFamily: 'Adere');
const IconData rightChevronIcon = IconData(0xe907, fontFamily: 'Adere');

// Fonction pour capitaliser la première lettre d'un texte
String capitalize(String text) {
  if (text.isEmpty) return text;
  return text[0].toUpperCase() + text.substring(1);
}

// BasicCalendarWidget
class BasicCalendarWidget extends StatefulWidget {
  const BasicCalendarWidget({
    Key? key,
    this.width,
    this.height,
    this.userid,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? userid;
  @override
  State<BasicCalendarWidget> createState() => _BasicCalendarWidgetState();
}

// BasicCalendarWidgetState
class _BasicCalendarWidgetState extends State<BasicCalendarWidget> {
  late DateTime _focusedDay;
  DateTime _selectedDay = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.month;

  // Ajouter une Map pour stocker les données d'humeur
  Map<DateTime, int> _moodMap = {};

  // Sélectionne automatiquement la date du jour lorsque le widget sera affiché pour la première fois
  @override
  void initState() {
    super.initState();
    _focusedDay = DateTime.now();
    _selectedDay = _focusedDay;
    // Récupére les données d'humeur de manière asynchrone
    _fetchMoodData();
  }

  // Définit la méthode asynchrone pour récupérer les données d'humeur
  Future<void> _fetchMoodData() async {
    final supabase = SupaFlow.client;

    final response = await supabase
        .from('saisie_symptoms')
        .select('date, mood') // Récupére les champs date et humeur
        .eq('user', widget.userid)
        .execute();

    debugPrint('ralph');
    debugPrint(response.toString());
    debugPrint('ralph2');

    final data = response.data as List<dynamic>;

    setState(() {
      _moodMap = {
        for (var item in data)
          // **Modify this line based on your date format**
          // If dates are stored as 'dd/MM/yyyy', use DateFormat to parse
          // If stored as DateTime, use DateTime.parse
          // Uncomment the appropriate line below

          // **A. If dates are stored as 'dd/MM/yyyy':**
          DateFormat('dd/MM/yyyy').parse(item['date'] as String).toLocal():
              item['mood'] as int

        // **B. If dates are stored as ISO 8601 strings:**
        // DateTime.parse(item['date'] as String).toLocal(): item['mood'] as int
      };
    });
  }

  // Calendar
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,

      // Ajoute une marge de 10px autour du calendrier
      margin: EdgeInsets.all(10.0),

      // TableCalendar
      child: TableCalendar(
        firstDay: DateTime.now().subtract(Duration(days: 365 * 2)),
        lastDay: DateTime.now().add(Duration(days: 365)),
        focusedDay: _focusedDay,
        locale: 'fr_FR',

        // Permet à l'utilisateur de choisir entre différents formats de calendrier (mensuel ou hebdomadaire)
        calendarFormat: _calendarFormat,

        availableCalendarFormats: const {
          CalendarFormat.month: 'Mois',
          CalendarFormat.week: 'Semaine',
        },

        onFormatChanged: (format) {
          setState(() {
            _calendarFormat = format;
          });
        },

        // Gestion du changement de page du calendrier
        onPageChanged: (focusedDay) {
          _focusedDay = focusedDay;
        },

        // Ajuste la hauteur de la ligne des jours de la semaine
        daysOfWeekHeight: 50.0,

        // Ajuste la hauteur des lignes du calendrier
        rowHeight: 45.0,

        // Gestion de la sélection des jours
        selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
        onDaySelected: (selectedDay, focusedDay) {
          if (!isSameDay(_selectedDay, selectedDay)) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay; // update _focusedDay here as well
              // _selectedEvents = _getEventsForDay(selectedDay); // If you have events
            });
          }
        },

        // Style d'affichage des jours de la semaine dans le calendrier
        daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: GoogleFonts.poppins(
            fontSize: 16,
          ),
          weekendStyle: GoogleFonts.poppins(
            fontSize: 16,
          ),
        ),

        // Style d'affichage pour le header du calendrier
        headerStyle: HeaderStyle(
          // Capitalise la première lettre du mois de l'année
          titleTextFormatter: (date, locale) {
            // Formate la date pour obtenir le mois et l'année
            final monthYear = DateFormat.yMMMM(locale).format(date);
            // Capitalise la première lettre
            return capitalize(monthYear);
          },

          // Style du titre
          titleTextStyle: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),

          // Style des icônes de navigation
          leftChevronIcon: Icon(
            leftChevronIcon,
            color: Colors.black,
            size: 20,
          ),
          rightChevronIcon: Icon(
            rightChevronIcon,
            color: Colors.black,
            size: 20,
          ),
          leftChevronPadding: EdgeInsets.zero,
          rightChevronPadding: EdgeInsets.zero,

          // Style du bouton permettant de sélectionner les différents formats de calendrier (mensuel ou hebdomadaire)
          formatButtonDecoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
          formatButtonTextStyle: GoogleFonts.poppins(
            color: Colors.white,
          ),

          // Ajuste la marge en bas du header
          headerPadding: EdgeInsets.only(bottom: 20.0),
        ),

        // CalendarBuilders
        calendarBuilders: CalendarBuilders(
          // Builder qui gère le style des jours de la semaine
          dowBuilder: (context, day) => Center(
            child: Text(
              DateFormat.E('fr_FR')
                  .format(day)
                  .toUpperCase() // Majuscule
                  .replaceAll('.',
                      ''), // Retire le point à la fin des jours de la semaine
              style: GoogleFonts.poppins(
                fontSize: 14,
              ),
            ),
          ),

          // Builder de sélection du calendrier
          selectedBuilder: (context, day, focusedDay) {
            // If there's a mood, display the colored square
            final normalizedDay = DateTime(day.year, day.month, day.day);
            final mood = _moodMap[normalizedDay];
            Color? squareColor;
            if (mood != null) {
              if (mood <= 3) {
                squareColor = Colors.red;
              } else if (mood <= 6) {
                squareColor = Colors.yellow;
              } else {
                squareColor = Colors.green;
              }
            }
            return Stack(
              children: [
                // Display the day number
                Center(
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Color(0xFF89CDFA), // Couleur de sélection
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '${day.day}',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                // Affiche le carré de couleur d'humeur si une humeur est présente
                if (squareColor != null)
                  Positioned(
                    top: 4,
                    right: 4,
                    child: Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: squareColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
              ],
            );
          },

          // Builder pour le jour actuel du calendrier
          todayBuilder: (context, day, focusedDay) {
            // Normalize the day to remove time information
            final normalizedDay = DateTime(day.year, day.month, day.day);
            final mood = _moodMap[normalizedDay];
            Color? squareColor;
            if (mood != null) {
              if (mood <= 3) {
                squareColor = Colors.red;
              } else if (mood <= 6) {
                squareColor = Colors.yellow;
              } else {
                squareColor = Colors.green;
              }
            }
            return Stack(
              children: [
                // Display the day number
                Center(
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '${day.day}',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                // If there's a mood, display the colored square
                if (squareColor != null)
                  Positioned(
                    top: 4,
                    right: 4,
                    child: Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: squareColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
              ],
            );
          },

          // Builder par défaut du calendrier
          defaultBuilder: (context, day, focusedDay) {
            // Normalize the day to remove time information
            final normalizedDay = DateTime(day.year, day.month, day.day);
            final mood = _moodMap[normalizedDay];
            Color? squareColor;
            if (mood != null) {
              if (mood <= 3) {
                squareColor = Colors.red;
              } else if (mood <= 6) {
                squareColor = Colors.yellow;
              } else {
                squareColor = Colors.green;
              }
            }
            return Stack(
              children: [
                // Display the color circle if there’s a mood
                if (mood != null)
                  Center(
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: Color(0xFF89CDFA),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                // Display the day number
                Center(
                  child: Text(
                    DateFormat('dd').format(day),
                    style: GoogleFonts.poppins(
                      color: isSameDay(day, _selectedDay)
                          ? Colors.white
                          : Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
                // If there's a mood, display the colored square
                if (squareColor != null)
                  Positioned(
                    top: 4,
                    right: 4,
                    child: Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: squareColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
              ],
            );
          },
          // Optionally, handle other builders like todayBuilder, selectedBuilder, etc.
        ),
        // Optional: If you have events, you can add the eventLoader
        // eventLoader: _getEventsForDay,
        // Optional: Custom builders for more customization
        // calendarBuilders: CalendarBuilders(
        //   dowBuilder: (context, day) {
        //     if (day.weekday == DateTime.sunday) {
        //       final text = DateFormat.E().format(day);
        //
        //       return Center(
        //         child: Text(
        //           text,
        //           style: TextStyle(color: Colors.red),
        //         ),
        //       );
        //     }
        //     return null; // Use default for other days
        //   },
        // ),
      ),
    );
  }

  // Optional: Define your event loader if you have events
  // List<Event> _getEventsForDay(DateTime day) {
  //   return events[day] ?? [];
  // }
}
