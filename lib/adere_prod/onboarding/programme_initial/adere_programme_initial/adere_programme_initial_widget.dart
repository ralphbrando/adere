import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'adere_programme_initial_model.dart';
export 'adere_programme_initial_model.dart';

class AdereProgrammeInitialWidget extends StatefulWidget {
  const AdereProgrammeInitialWidget({super.key});

  @override
  State<AdereProgrammeInitialWidget> createState() =>
      _AdereProgrammeInitialWidgetState();
}

class _AdereProgrammeInitialWidgetState
    extends State<AdereProgrammeInitialWidget> {
  late AdereProgrammeInitialModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdereProgrammeInitialModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ADERE_PROGRAMME_INITIAL'});
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
                                  'ADERE_PROGRAMME_INITIAL_Text_po3ff19t_ON');
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
                                          'PROGRAMME INITIAL',
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
                                            width: 165.0,
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
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FFAppState().onboardLevel >= 1
                                        ? FlutterFlowTheme.of(context)
                                            .cambridgeBlue
                                        : FlutterFlowTheme.of(context).error,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 10.0, 20.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 16.0, 0.0),
                                          child: Container(
                                            width: 30.0,
                                            height: 30.0,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Theme(
                                              data: ThemeData(
                                                checkboxTheme:
                                                    CheckboxThemeData(
                                                  visualDensity:
                                                      VisualDensity.compact,
                                                  materialTapTargetSize:
                                                      MaterialTapTargetSize
                                                          .shrinkWrap,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                  ),
                                                ),
                                                unselectedWidgetColor:
                                                    FlutterFlowTheme.of(context)
                                                        .jett,
                                              ),
                                              child: Checkbox(
                                                value: _model.checkboxValue1 ??=
                                                    true,
                                                onChanged: true
                                                    ? null
                                                    : (newValue) async {
                                                        safeSetState(() => _model
                                                                .checkboxValue1 =
                                                            newValue!);
                                                      },
                                                side: BorderSide(
                                                  width: 2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .jett,
                                                ),
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .jett,
                                                checkColor: true
                                                    ? null
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .cambridgeBlue,
                                              ),
                                            ),
                                          ),
                                        ),
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
                                                  '1. Inscription dʼéligibilité',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .eerieBlack,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: () {
                                      if (FFAppState().onboardLevel >= 2) {
                                        return FlutterFlowTheme.of(context)
                                            .cambridgeBlue;
                                      } else if (FFAppState().onboardLevel ==
                                          1) {
                                        return FlutterFlowTheme.of(context)
                                            .ashGray;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .platinum;
                                      }
                                    }(),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 10.0, 20.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 16.0, 0.0),
                                          child: Container(
                                            width: 30.0,
                                            height: 30.0,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Theme(
                                              data: ThemeData(
                                                checkboxTheme:
                                                    CheckboxThemeData(
                                                  visualDensity:
                                                      VisualDensity.compact,
                                                  materialTapTargetSize:
                                                      MaterialTapTargetSize
                                                          .shrinkWrap,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                  ),
                                                ),
                                                unselectedWidgetColor:
                                                    FlutterFlowTheme.of(context)
                                                        .jett,
                                              ),
                                              child: Checkbox(
                                                value: _model.checkboxValue2 ??=
                                                    FFAppState().onboardLevel >=
                                                        2,
                                                onChanged: true
                                                    ? null
                                                    : (newValue) async {
                                                        safeSetState(() => _model
                                                                .checkboxValue2 =
                                                            newValue!);
                                                      },
                                                side: BorderSide(
                                                  width: 2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .jett,
                                                ),
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .jett,
                                                checkColor: true
                                                    ? null
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .cambridgeBlue,
                                              ),
                                            ),
                                          ),
                                        ),
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
                                                  '2. Présentation générale',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .eerieBlack,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: () {
                                      if (FFAppState().onboardLevel >= 3) {
                                        return FlutterFlowTheme.of(context)
                                            .cambridgeBlue;
                                      } else if (FFAppState().onboardLevel ==
                                          2) {
                                        return FlutterFlowTheme.of(context)
                                            .ashGray;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .platinum;
                                      }
                                    }(),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 10.0, 20.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 16.0, 0.0),
                                          child: Container(
                                            width: 30.0,
                                            height: 30.0,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Theme(
                                              data: ThemeData(
                                                checkboxTheme:
                                                    CheckboxThemeData(
                                                  visualDensity:
                                                      VisualDensity.compact,
                                                  materialTapTargetSize:
                                                      MaterialTapTargetSize
                                                          .shrinkWrap,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                  ),
                                                ),
                                                unselectedWidgetColor:
                                                    FlutterFlowTheme.of(context)
                                                        .jett,
                                              ),
                                              child: Checkbox(
                                                value: _model.checkboxValue3 ??=
                                                    FFAppState().onboardLevel >=
                                                        3,
                                                onChanged: true
                                                    ? null
                                                    : (newValue) async {
                                                        safeSetState(() => _model
                                                                .checkboxValue3 =
                                                            newValue!);
                                                      },
                                                side: BorderSide(
                                                  width: 2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .jett,
                                                ),
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .jett,
                                                checkColor: true
                                                    ? null
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .cambridgeBlue,
                                              ),
                                            ),
                                          ),
                                        ),
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
                                                  '3. Questionnaire initial',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .eerieBlack,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: () {
                                      if (FFAppState().onboardLevel >= 4) {
                                        return FlutterFlowTheme.of(context)
                                            .cambridgeBlue;
                                      } else if (FFAppState().onboardLevel ==
                                          3) {
                                        return FlutterFlowTheme.of(context)
                                            .ashGray;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .platinum;
                                      }
                                    }(),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 10.0, 20.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 16.0, 0.0),
                                          child: Container(
                                            width: 30.0,
                                            height: 30.0,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Theme(
                                              data: ThemeData(
                                                checkboxTheme:
                                                    CheckboxThemeData(
                                                  visualDensity:
                                                      VisualDensity.compact,
                                                  materialTapTargetSize:
                                                      MaterialTapTargetSize
                                                          .shrinkWrap,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                  ),
                                                ),
                                                unselectedWidgetColor:
                                                    FlutterFlowTheme.of(context)
                                                        .jett,
                                              ),
                                              child: Checkbox(
                                                value: _model.checkboxValue4 ??=
                                                    FFAppState().onboardLevel >=
                                                        4,
                                                onChanged: true
                                                    ? null
                                                    : (newValue) async {
                                                        safeSetState(() => _model
                                                                .checkboxValue4 =
                                                            newValue!);
                                                      },
                                                side: BorderSide(
                                                  width: 2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .jett,
                                                ),
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .jett,
                                                checkColor: true
                                                    ? null
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .cambridgeBlue,
                                              ),
                                            ),
                                          ),
                                        ),
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
                                                  '4. Vos médicaments',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .eerieBlack,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: () {
                                      if (FFAppState().onboardLevel >= 5) {
                                        return FlutterFlowTheme.of(context)
                                            .cambridgeBlue;
                                      } else if (FFAppState().onboardLevel ==
                                          4) {
                                        return FlutterFlowTheme.of(context)
                                            .ashGray;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .platinum;
                                      }
                                    }(),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 10.0, 20.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 16.0, 0.0),
                                          child: Container(
                                            width: 30.0,
                                            height: 30.0,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Theme(
                                              data: ThemeData(
                                                checkboxTheme:
                                                    CheckboxThemeData(
                                                  visualDensity:
                                                      VisualDensity.compact,
                                                  materialTapTargetSize:
                                                      MaterialTapTargetSize
                                                          .shrinkWrap,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                  ),
                                                ),
                                                unselectedWidgetColor:
                                                    FlutterFlowTheme.of(context)
                                                        .jett,
                                              ),
                                              child: Checkbox(
                                                value: _model.checkboxValue5 ??=
                                                    FFAppState().onboardLevel >=
                                                        5,
                                                onChanged: true
                                                    ? null
                                                    : (newValue) async {
                                                        safeSetState(() => _model
                                                                .checkboxValue5 =
                                                            newValue!);
                                                      },
                                                side: BorderSide(
                                                  width: 2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .jett,
                                                ),
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .jett,
                                                checkColor: true
                                                    ? null
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .cambridgeBlue,
                                              ),
                                            ),
                                          ),
                                        ),
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
                                                  '5. Abonnement',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .eerieBlack,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: () {
                                      if (FFAppState().onboardLevel >= 6) {
                                        return FlutterFlowTheme.of(context)
                                            .cambridgeBlue;
                                      } else if (FFAppState().onboardLevel ==
                                          5) {
                                        return FlutterFlowTheme.of(context)
                                            .ashGray;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .platinum;
                                      }
                                    }(),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 10.0, 20.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 16.0, 0.0),
                                          child: Container(
                                            width: 30.0,
                                            height: 30.0,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Theme(
                                              data: ThemeData(
                                                checkboxTheme:
                                                    CheckboxThemeData(
                                                  visualDensity:
                                                      VisualDensity.compact,
                                                  materialTapTargetSize:
                                                      MaterialTapTargetSize
                                                          .shrinkWrap,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                  ),
                                                ),
                                                unselectedWidgetColor:
                                                    FlutterFlowTheme.of(context)
                                                        .jett,
                                              ),
                                              child: Checkbox(
                                                value: _model.checkboxValue6 ??=
                                                    FFAppState().onboardLevel >=
                                                        6,
                                                onChanged: true
                                                    ? null
                                                    : (newValue) async {
                                                        safeSetState(() => _model
                                                                .checkboxValue6 =
                                                            newValue!);
                                                      },
                                                side: BorderSide(
                                                  width: 2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .jett,
                                                ),
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .jett,
                                                checkColor: true
                                                    ? null
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .cambridgeBlue,
                                              ),
                                            ),
                                          ),
                                        ),
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
                                                  '6. Questionnaire de connaissance',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .eerieBlack,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: () {
                                      if (FFAppState().onboardLevel >= 7) {
                                        return FlutterFlowTheme.of(context)
                                            .cambridgeBlue;
                                      } else if (FFAppState().onboardLevel ==
                                          6) {
                                        return FlutterFlowTheme.of(context)
                                            .ashGray;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .platinum;
                                      }
                                    }(),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 10.0, 20.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 16.0, 0.0),
                                          child: Container(
                                            width: 30.0,
                                            height: 30.0,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Theme(
                                              data: ThemeData(
                                                checkboxTheme:
                                                    CheckboxThemeData(
                                                  visualDensity:
                                                      VisualDensity.compact,
                                                  materialTapTargetSize:
                                                      MaterialTapTargetSize
                                                          .shrinkWrap,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                  ),
                                                ),
                                                unselectedWidgetColor:
                                                    FlutterFlowTheme.of(context)
                                                        .jett,
                                              ),
                                              child: Checkbox(
                                                value: _model.checkboxValue7 ??=
                                                    FFAppState().onboardLevel >=
                                                        7,
                                                onChanged: true
                                                    ? null
                                                    : (newValue) async {
                                                        safeSetState(() => _model
                                                                .checkboxValue7 =
                                                            newValue!);
                                                      },
                                                side: BorderSide(
                                                  width: 2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .jett,
                                                ),
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .jett,
                                                checkColor: true
                                                    ? null
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .cambridgeBlue,
                                              ),
                                            ),
                                          ),
                                        ),
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
                                                  '7. Présentation du tableau de bord',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .eerieBlack,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                          ].divide(SizedBox(height: 20.0)),
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
                                'ADERE_PROGRAMME_INITIAL_Button_Container');
                            logFirebaseEvent(
                                'Button_Container_update_app_state');
                            FFAppState().presentationTripleTextPosition = 0;
                            safeSetState(() {});
                            if (FFAppState().onboardLevel == 1) {
                              logFirebaseEvent('Button_Container_navigate_to');

                              context.pushNamed('ADERE_PRESENTATION_GENERALE');
                            } else if (FFAppState().onboardLevel == 2) {
                              logFirebaseEvent('Button_Container_backend_call');
                              _model.userForQuestion =
                                  await UsersTable().queryRows(
                                queryFn: (q) => q.eq(
                                  'id',
                                  currentUserUid,
                                ),
                              );
                              if (_model.userForQuestion?.first
                                      ?.onboardingQuestionLevel ==
                                  1) {
                                logFirebaseEvent(
                                    'Button_Container_navigate_to');

                                context.pushNamed('ADERE_QUESTION_02');
                              } else if (_model.userForQuestion?.first
                                      ?.onboardingQuestionLevel ==
                                  2) {
                                logFirebaseEvent(
                                    'Button_Container_navigate_to');

                                context.pushNamed('ADERE_QUESTION_03');
                              } else if (_model.userForQuestion?.first
                                      ?.onboardingQuestionLevel ==
                                  3) {
                                logFirebaseEvent(
                                    'Button_Container_navigate_to');

                                context.pushNamed('ADERE_QUESTION_04');
                              } else if (_model.userForQuestion?.first
                                      ?.onboardingQuestionLevel ==
                                  4) {
                                logFirebaseEvent(
                                    'Button_Container_navigate_to');

                                context.pushNamed('ADERE_QUESTION_05');
                              } else if (_model.userForQuestion?.first
                                      ?.onboardingQuestionLevel ==
                                  5) {
                                logFirebaseEvent(
                                    'Button_Container_navigate_to');

                                context.pushNamed('ADERE_QUESTION_06');
                              } else if (_model.userForQuestion?.first
                                      ?.onboardingQuestionLevel ==
                                  6) {
                                logFirebaseEvent(
                                    'Button_Container_navigate_to');

                                context.pushNamed('ADERE_QUESTION_07');
                              } else if (_model.userForQuestion?.first
                                      ?.onboardingQuestionLevel ==
                                  7) {
                                logFirebaseEvent(
                                    'Button_Container_navigate_to');

                                context.pushNamed('ADERE_QUESTION_08');
                              } else if (_model.userForQuestion?.first
                                      ?.onboardingQuestionLevel ==
                                  8) {
                                logFirebaseEvent(
                                    'Button_Container_navigate_to');

                                context.pushNamed('ADERE_QUESTION_09');
                              } else if (_model.userForQuestion?.first
                                      ?.onboardingQuestionLevel ==
                                  9) {
                                logFirebaseEvent(
                                    'Button_Container_navigate_to');

                                context.pushNamed('ADERE_QUESTION_10');
                              } else if (_model.userForQuestion?.first
                                      ?.onboardingQuestionLevel ==
                                  10) {
                                logFirebaseEvent(
                                    'Button_Container_navigate_to');

                                context.pushNamed('ADERE_QUESTION_11');
                              } else {
                                logFirebaseEvent(
                                    'Button_Container_navigate_to');

                                context.pushNamed(
                                    'ADERE_PRESENTATION_QUESTIONNAIRE_INITIAL');
                              }
                            } else if (FFAppState().onboardLevel == 3) {
                              logFirebaseEvent('Button_Container_navigate_to');

                              context.pushNamed(
                                  'ADERE_PRESENTATION_MEDICAMENT_SAISIE_1');
                            } else if (FFAppState().onboardLevel == 4) {
                              logFirebaseEvent('Button_Container_navigate_to');

                              context.pushNamed('ADERE_ABONNEMENT');
                            } else if (FFAppState().onboardLevel == 5) {
                              logFirebaseEvent('Button_Container_navigate_to');

                              context.pushNamed(
                                'APP-SCREEN',
                                queryParameters: {
                                  'keyComponents': serializeParam(
                                    0,
                                    ParamType.int,
                                  ),
                                  'sequence': serializeParam(
                                    1,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            } else if (FFAppState().onboardLevel == 6) {
                              logFirebaseEvent('Button_Container_navigate_to');

                              context.pushNamed('ADERE_PRESENTATION_DASHBOARD');
                            }

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
                        .addToStart(SizedBox(height: 20.0))
                        .addToEnd(SizedBox(height: 20.0)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
