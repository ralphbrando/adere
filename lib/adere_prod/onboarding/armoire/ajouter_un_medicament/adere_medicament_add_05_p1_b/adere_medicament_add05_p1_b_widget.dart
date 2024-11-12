import '/adere_prod/composants/navigation/adere_dashboard_header/adere_dashboard_header_widget.dart';
import '/adere_prod/composants/navigation/adere_dashboard_navigation_bottom/adere_dashboard_navigation_bottom_widget.dart';
import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'adere_medicament_add05_p1_b_model.dart';
export 'adere_medicament_add05_p1_b_model.dart';

class AdereMedicamentAdd05P1BWidget extends StatefulWidget {
  const AdereMedicamentAdd05P1BWidget({
    super.key,
    required this.body,
  });

  final dynamic body;

  @override
  State<AdereMedicamentAdd05P1BWidget> createState() =>
      _AdereMedicamentAdd05P1BWidgetState();
}

class _AdereMedicamentAdd05P1BWidgetState
    extends State<AdereMedicamentAdd05P1BWidget> {
  late AdereMedicamentAdd05P1BModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdereMedicamentAdd05P1BModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ADERE_MEDICAMENT_ADD_05_P1_B'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: 40.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).isabelline,
              ),
            ),
            if (FFAppState().onboardLevel < 7)
              Container(
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).isabelline,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            decoration: BoxDecoration(),
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  FFIcons.kadereLogotype,
                                  color: Colors.black,
                                  size: 22.0,
                                ),
                              ].divide(SizedBox(width: 2.0)),
                            ),
                          ),
                        ].divide(SizedBox(width: 10.0)),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            decoration: BoxDecoration(),
                            alignment: AlignmentDirectional(1.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'ADERE_MEDICAMENT_ADD_05_P1_B_Text_ta3dkc');
                                logFirebaseEvent('Text_auth');
                                GoRouter.of(context).prepareAuthEvent();
                                await authManager.signOut();
                                GoRouter.of(context).clearRedirectLocation();

                                context.goNamedAuth(
                                    'ADERE_INSCRIPTION', context.mounted);
                              },
                              child: Text(
                                'DÉCONNEXION',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.underline,
                                    ),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(width: 10.0)),
                      ),
                    ),
                  ],
                ),
              ),
            if (FFAppState().onboardLevel >= 7)
              Container(
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).isabelline,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                  ),
                ),
                child: wrapWithModel(
                  model: _model.adereDashboardHeaderModel,
                  updateCallback: () => safeSetState(() {}),
                  child: AdereDashboardHeaderWidget(),
                ),
              ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'QUESTIONNAIRE',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .eerieBlack,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 6.0, 0.0, 0.0),
                                          child: Container(
                                            width: 131.0,
                                            height: 5.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .eerieBlack,
                                              borderRadius:
                                                  BorderRadius.circular(100.0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).jett,
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 15.0, 20.0, 14.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          getJsonField(
                                            widget!.body,
                                            r'''$.package_title''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .eerieBlack,
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
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).platinum,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).jett,
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Sélectionner vos heures de prise pour ce médicament :',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .eerieBlack,
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
                                Form(
                                  key: _model.formKey,
                                  autovalidateMode: AutovalidateMode.disabled,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'ADERE_MEDICAMENT_ADD_05_P1_B_Field_Conta');
                                          logFirebaseEvent(
                                              'Field_Container_date_time_picker');

                                          final _datePicked1Time =
                                              await showTimePicker(
                                            context: context,
                                            initialTime: TimeOfDay.fromDateTime(
                                                getCurrentTimestamp),
                                            builder: (context, child) {
                                              return wrapInMaterialTimePickerTheme(
                                                context,
                                                child!,
                                                headerBackgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .white,
                                                headerForegroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .eerieBlack,
                                                headerTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 32.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                pickerBackgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .white,
                                                pickerForegroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .eerieBlack,
                                                selectedDateTimeBackgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .eerieBlack,
                                                selectedDateTimeForegroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .lightSkyBlue,
                                                actionButtonForegroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .eerieBlack,
                                                iconSize: 24.0,
                                              );
                                            },
                                          );
                                          if (_datePicked1Time != null) {
                                            safeSetState(() {
                                              _model.datePicked1 = DateTime(
                                                getCurrentTimestamp.year,
                                                getCurrentTimestamp.month,
                                                getCurrentTimestamp.day,
                                                _datePicked1Time.hour,
                                                _datePicked1Time.minute,
                                              );
                                            });
                                          }
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .white,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .jett,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 20.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    10.0,
                                                                    0.0,
                                                                    10.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Heure de la prise 1',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .eerieBlack,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                              Text(
                                                                functions
                                                                    .getTimeOnly(
                                                                        _model
                                                                            .datePicked1)!,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .slateGray,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                height: 10.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Icon(
                                                        FFIcons.ktimer12,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .jett,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 20.0)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      if ((FFAppState().CBDEPRISE == '3') ||
                                          (FFAppState().CBDEPRISE == '2') ||
                                          (FFAppState().CBDEPRISE == '4') ||
                                          (FFAppState().CBDEPRISE == '5'))
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'ADERE_MEDICAMENT_ADD_05_P1_B_Field_Conta');
                                            logFirebaseEvent(
                                                'Field_Container_date_time_picker');

                                            final _datePicked2Time =
                                                await showTimePicker(
                                              context: context,
                                              initialTime:
                                                  TimeOfDay.fromDateTime(
                                                      getCurrentTimestamp),
                                              builder: (context, child) {
                                                return wrapInMaterialTimePickerTheme(
                                                  context,
                                                  child!,
                                                  headerBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .white,
                                                  headerForegroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .eerieBlack,
                                                  headerTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineLarge
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 32.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                  pickerBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .white,
                                                  pickerForegroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .eerieBlack,
                                                  selectedDateTimeBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .eerieBlack,
                                                  selectedDateTimeForegroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .lightSkyBlue,
                                                  actionButtonForegroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .eerieBlack,
                                                  iconSize: 24.0,
                                                );
                                              },
                                            );
                                            if (_datePicked2Time != null) {
                                              safeSetState(() {
                                                _model.datePicked2 = DateTime(
                                                  getCurrentTimestamp.year,
                                                  getCurrentTimestamp.month,
                                                  getCurrentTimestamp.day,
                                                  _datePicked2Time.hour,
                                                  _datePicked2Time.minute,
                                                );
                                              });
                                            }
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .white,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .jett,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 20.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      10.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Heure de la prise 2',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .eerieBlack,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  functions
                                                                      .getTimeOnly(
                                                                          _model
                                                                              .datePicked2)!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .slateGray,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height:
                                                                      10.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Icon(
                                                          FFIcons.ktimer12,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .jett,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 20.0)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      if ((FFAppState().CBDEPRISE == '4') ||
                                          (FFAppState().CBDEPRISE == '5') ||
                                          (FFAppState().CBDEPRISE == '3'))
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'ADERE_MEDICAMENT_ADD_05_P1_B_Field_Conta');
                                            logFirebaseEvent(
                                                'Field_Container_date_time_picker');

                                            final _datePicked3Time =
                                                await showTimePicker(
                                              context: context,
                                              initialTime:
                                                  TimeOfDay.fromDateTime(
                                                      getCurrentTimestamp),
                                              builder: (context, child) {
                                                return wrapInMaterialTimePickerTheme(
                                                  context,
                                                  child!,
                                                  headerBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .white,
                                                  headerForegroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .eerieBlack,
                                                  headerTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineLarge
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 32.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                  pickerBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .white,
                                                  pickerForegroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .eerieBlack,
                                                  selectedDateTimeBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .eerieBlack,
                                                  selectedDateTimeForegroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .lightSkyBlue,
                                                  actionButtonForegroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .eerieBlack,
                                                  iconSize: 24.0,
                                                );
                                              },
                                            );
                                            if (_datePicked3Time != null) {
                                              safeSetState(() {
                                                _model.datePicked3 = DateTime(
                                                  getCurrentTimestamp.year,
                                                  getCurrentTimestamp.month,
                                                  getCurrentTimestamp.day,
                                                  _datePicked3Time.hour,
                                                  _datePicked3Time.minute,
                                                );
                                              });
                                            }
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .white,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .jett,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 20.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      10.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Heure de la prise 3',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .eerieBlack,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  functions
                                                                      .getTimeOnly(
                                                                          _model
                                                                              .datePicked3)!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .slateGray,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height:
                                                                      10.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Icon(
                                                          FFIcons.ktimer12,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .jett,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 20.0)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      if ((FFAppState().CBDEPRISE == '5') ||
                                          (FFAppState().CBDEPRISE == '4'))
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'ADERE_MEDICAMENT_ADD_05_P1_B_Field_Conta');
                                            logFirebaseEvent(
                                                'Field_Container_date_time_picker');

                                            final _datePicked4Time =
                                                await showTimePicker(
                                              context: context,
                                              initialTime:
                                                  TimeOfDay.fromDateTime(
                                                      getCurrentTimestamp),
                                              builder: (context, child) {
                                                return wrapInMaterialTimePickerTheme(
                                                  context,
                                                  child!,
                                                  headerBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .white,
                                                  headerForegroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .eerieBlack,
                                                  headerTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineLarge
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 32.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                  pickerBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .white,
                                                  pickerForegroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .eerieBlack,
                                                  selectedDateTimeBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .eerieBlack,
                                                  selectedDateTimeForegroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .lightSkyBlue,
                                                  actionButtonForegroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .eerieBlack,
                                                  iconSize: 24.0,
                                                );
                                              },
                                            );
                                            if (_datePicked4Time != null) {
                                              safeSetState(() {
                                                _model.datePicked4 = DateTime(
                                                  getCurrentTimestamp.year,
                                                  getCurrentTimestamp.month,
                                                  getCurrentTimestamp.day,
                                                  _datePicked4Time.hour,
                                                  _datePicked4Time.minute,
                                                );
                                              });
                                            }
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .white,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .jett,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 20.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      10.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Heure de la prise 4',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .eerieBlack,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  functions
                                                                      .getTimeOnly(
                                                                          _model
                                                                              .datePicked4)!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .slateGray,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height:
                                                                      10.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Icon(
                                                          FFIcons.ktimer12,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .jett,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 20.0)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      if (FFAppState().CBDEPRISE == '5')
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'ADERE_MEDICAMENT_ADD_05_P1_B_Field_Conta');
                                            logFirebaseEvent(
                                                'Field_Container_date_time_picker');

                                            final _datePicked5Time =
                                                await showTimePicker(
                                              context: context,
                                              initialTime:
                                                  TimeOfDay.fromDateTime(
                                                      getCurrentTimestamp),
                                              builder: (context, child) {
                                                return wrapInMaterialTimePickerTheme(
                                                  context,
                                                  child!,
                                                  headerBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .white,
                                                  headerForegroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .eerieBlack,
                                                  headerTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineLarge
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 32.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                  pickerBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .white,
                                                  pickerForegroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .eerieBlack,
                                                  selectedDateTimeBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .eerieBlack,
                                                  selectedDateTimeForegroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .lightSkyBlue,
                                                  actionButtonForegroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .eerieBlack,
                                                  iconSize: 24.0,
                                                );
                                              },
                                            );
                                            if (_datePicked5Time != null) {
                                              safeSetState(() {
                                                _model.datePicked5 = DateTime(
                                                  getCurrentTimestamp.year,
                                                  getCurrentTimestamp.month,
                                                  getCurrentTimestamp.day,
                                                  _datePicked5Time.hour,
                                                  _datePicked5Time.minute,
                                                );
                                              });
                                            }
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .white,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .jett,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 20.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      10.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Heure de la prise 5',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .eerieBlack,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  functions
                                                                      .getTimeOnly(
                                                                          _model
                                                                              .datePicked5)!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .slateGray,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height:
                                                                      10.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Icon(
                                                          FFIcons.ktimer12,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .jett,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 20.0)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                    ].divide(SizedBox(height: 20.0)),
                                  ),
                                ),
                              ]
                                  .divide(SizedBox(height: 20.0))
                                  .addToStart(SizedBox(height: 20.0))
                                  .addToEnd(SizedBox(height: 20.0)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'ADERE_MEDICAMENT_ADD_05_P1_B_Button_Cont');
                            logFirebaseEvent('Button_Container_backend_call');
                            _model.package =
                                await UserPackagesTable().queryRows(
                              queryFn: (q) => q
                                  .eq(
                                    'user',
                                    currentUserUid,
                                  )
                                  .eq(
                                    'package',
                                    getJsonField(
                                      widget!.body,
                                      r'''$.package_id''',
                                    ).toString(),
                                  ),
                            );
                            logFirebaseEvent('Button_Container_backend_call');
                            await SaisieIntakesTable().delete(
                              matchingRows: (rows) => rows.eq(
                                'userpackage',
                                _model.package?.first?.id,
                              ),
                            );
                            await Future.wait([
                              Future(() async {
                                if (_model.package?.first?.takeMonday == 1) {
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'monday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked1),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'monday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked2),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'monday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked3),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'monday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked4),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'monday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked5),
                                  });
                                }
                              }),
                              Future(() async {
                                if (_model.package?.first?.takeTuesday == 1) {
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'tuesday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked1),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'tuesday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked2),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'tuesday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked3),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'tuesday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked4),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'tuesday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked5),
                                  });
                                }
                              }),
                              Future(() async {
                                if (_model.package?.first?.takeWednesday == 1) {
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'wednesday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked1),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'wednesday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked2),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'wednesday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked3),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'wednesday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked4),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'wednesday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked5),
                                  });
                                }
                              }),
                              Future(() async {
                                if (_model.package?.first?.takeThursday == 1) {
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'thursday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked1),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'thursday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked2),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'thursday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked3),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'thursday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked4),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'thursday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked5),
                                  });
                                }
                              }),
                              Future(() async {
                                if (_model.package?.first?.takeFriday == 1) {
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'friday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked1),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'friday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked2),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'friday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked3),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'friday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked4),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'friday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked5),
                                  });
                                }
                              }),
                              Future(() async {
                                if (_model.package?.first?.takeSaturday == 1) {
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'saturday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked1),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'saturday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked2),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'saturday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked3),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'saturday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked4),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'saturday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked5),
                                  });
                                }
                              }),
                              Future(() async {
                                if (_model.package?.first?.takeSunday == 1) {
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'sunday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked1),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'sunday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked2),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'sunday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked3),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'sunday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked4),
                                  });
                                  logFirebaseEvent(
                                      'Button_Container_backend_call');
                                  await SaisieIntakesTable().insert({
                                    'userpackage': _model.package?.first?.id,
                                    'day': 'sunday',
                                    'moment': functions
                                        .getTimeOnly(_model.datePicked5),
                                  });
                                }
                              }),
                            ]);
                            logFirebaseEvent('Button_Container_navigate_to');

                            context.pushNamed(
                              'ADERE_MEDICAMENT_ADD_05_P1_C',
                              queryParameters: {
                                'body': serializeParam(
                                  widget!.body,
                                  ParamType.JSON,
                                ),
                              }.withoutNulls,
                            );

                            safeSetState(() {});
                          },
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).jett,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 17.0, 20.0, 16.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Continuer',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: Colors.white,
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
                          ),
                        ),
                      ),
                    ]
                        .divide(SizedBox(height: 20.0))
                        .addToStart(SizedBox(height: 20.0)),
                  ),
                ),
              ),
            ),
            if (FFAppState().onboardLevel >= 7)
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFF0E9E3),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                  ),
                  child: wrapWithModel(
                    model: _model.adereDashboardNavigationBottomModel,
                    updateCallback: () => safeSetState(() {}),
                    child: AdereDashboardNavigationBottomWidget(),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
