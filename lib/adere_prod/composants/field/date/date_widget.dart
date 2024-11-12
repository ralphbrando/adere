import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'date_model.dart';
export 'date_model.dart';

class DateWidget extends StatefulWidget {
  const DateWidget({super.key});

  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  late DateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DateModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 20.0, 14.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          logFirebaseEvent('DATE_COMP_Date_Row_ON_TAP');
          logFirebaseEvent('Date_Row_date_time_picker');
          final _datePickedDate = await showDatePicker(
            context: context,
            initialDate: getCurrentTimestamp,
            firstDate: DateTime(1900),
            lastDate: DateTime(2050),
            builder: (context, child) {
              return wrapInMaterialDatePickerTheme(
                context,
                child!,
                headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                headerForegroundColor: FlutterFlowTheme.of(context).info,
                headerTextStyle:
                    FlutterFlowTheme.of(context).headlineLarge.override(
                          fontFamily: 'Poppins',
                          fontSize: 32.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                pickerBackgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                selectedDateTimeBackgroundColor:
                    FlutterFlowTheme.of(context).tertiary,
                selectedDateTimeForegroundColor:
                    FlutterFlowTheme.of(context).info,
                actionButtonForegroundColor:
                    FlutterFlowTheme.of(context).primaryText,
                iconSize: 24.0,
              );
            },
          );

          if (_datePickedDate != null) {
            safeSetState(() {
              _model.datePicked = DateTime(
                _datePickedDate.year,
                _datePickedDate.month,
                _datePickedDate.day,
              );
            });
          }
          logFirebaseEvent('Date_Row_update_app_state');
          FFAppState().birthdateLabel = dateTimeFormat(
            "d/M/y",
            _model.datePicked,
            locale: FFLocalizations.of(context).languageCode,
          );
          safeSetState(() {});
        },
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      FFAppState().birthdateLabel,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context).eerieBlack,
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
