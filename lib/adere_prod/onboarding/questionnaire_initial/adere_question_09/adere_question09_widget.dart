import '/adere_prod/composants/dialog/selection_maladie/selection_maladie_widget.dart';
import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'adere_question09_model.dart';
export 'adere_question09_model.dart';

class AdereQuestion09Widget extends StatefulWidget {
  const AdereQuestion09Widget({super.key});

  @override
  State<AdereQuestion09Widget> createState() => _AdereQuestion09WidgetState();
}

class _AdereQuestion09WidgetState extends State<AdereQuestion09Widget> {
  late AdereQuestion09Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdereQuestion09Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ADERE_QUESTION_09'});
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

    return FutureBuilder<List<UserIllnessRow>>(
      future: UserIllnessTable().queryRows(
        queryFn: (q) => q.eq(
          'user',
          currentUserUid,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<UserIllnessRow> adereQuestion09UserIllnessRowList = snapshot.data!;

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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
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
                                      'ADERE_QUESTION_09_Text_hpu5n2wi_ON_TAP');
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
                  child: FutureBuilder<List<IllnessesRow>>(
                    future: IllnessesTable().queryRows(
                      queryFn: (q) => q,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<IllnessesRow> contentContainerIllnessesRowList =
                          snapshot.data!;

                      return Container(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'QUESTIONNAIRE',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .eerieBlack,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 6.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: 131.0,
                                                    height: 5.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .eerieBlack,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100.0),
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
                                child: Stack(
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 25.0, 20.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .platinum,
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(20.0),
                                                topLeft: Radius.circular(20.0),
                                                topRight: Radius.circular(20.0),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.all(40.0),
                                                  child: Text(
                                                    'Quelle est votre maladie ?',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .eerieBlack,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 0.0),
                                            child: Container(
                                              width: 60.0,
                                              height: 64.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: Image.asset(
                                                    'assets/images/adere_question_vector.png',
                                                  ).image,
                                                ),
                                                shape: BoxShape.rectangle,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.0, -1.0),
                                      child: Container(
                                        width: 50.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color:
                                              FlutterFlowTheme.of(context).jett,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.question_mark_rounded,
                                          color: Colors.white,
                                          size: 36.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).platinum,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(20.0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(),
                                          child: Form(
                                            key: _model.formKey,
                                            autovalidateMode:
                                                AutovalidateMode.disabled,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropDownValueController1 ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options:
                                                        contentContainerIllnessesRowList
                                                            .map((e) => e.name)
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        safeSetState(() => _model
                                                                .dropDownValue1 =
                                                            val),
                                                    width: 300.0,
                                                    height: 50.0,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .eerieBlack,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                    hintText:
                                                        'Sélectionnez une pathologie',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .jett,
                                                      size: 36.0,
                                                    ),
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .white,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .jett,
                                                    borderWidth: 2.0,
                                                    borderRadius: 10.0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 4.0,
                                                                20.0, 4.0),
                                                    hidesUnderline: true,
                                                    isOverButton: false,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                    labelText: '',
                                                    labelTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                  ),
                                                ),
                                                if (FFAppState()
                                                        .dropdownVisibility >=
                                                    1)
                                                  Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropDownValueController2 ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      options:
                                                          contentContainerIllnessesRowList
                                                              .map(
                                                                  (e) => e.name)
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.dropDownValue2 =
                                                                  val),
                                                      width: 300.0,
                                                      height: 50.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .eerieBlack,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                      hintText:
                                                          'Sélectionnez une pathologie',
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .jett,
                                                        size: 36.0,
                                                      ),
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .white,
                                                      elevation: 2.0,
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .jett,
                                                      borderWidth: 2.0,
                                                      borderRadius: 10.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  4.0,
                                                                  20.0,
                                                                  4.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                      labelText: '',
                                                      labelTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                  ),
                                                if (FFAppState()
                                                        .dropdownVisibility >=
                                                    2)
                                                  Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropDownValueController3 ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      options:
                                                          contentContainerIllnessesRowList
                                                              .map(
                                                                  (e) => e.name)
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.dropDownValue3 =
                                                                  val),
                                                      width: 300.0,
                                                      height: 50.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .eerieBlack,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                      hintText:
                                                          'Sélectionnez une pathologie',
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .jett,
                                                        size: 36.0,
                                                      ),
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .white,
                                                      elevation: 2.0,
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .jett,
                                                      borderWidth: 2.0,
                                                      borderRadius: 10.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  4.0,
                                                                  20.0,
                                                                  4.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                      labelText: '',
                                                      labelTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                  ),
                                                if (FFAppState()
                                                        .dropdownVisibility <=
                                                    2)
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'ADERE_QUESTION_09_Button_Container_ON_TA');
                                                      logFirebaseEvent(
                                                          'Button_Container_update_app_state');
                                                      FFAppState()
                                                              .dropdownVisibility =
                                                          FFAppState()
                                                                  .dropdownVisibility +
                                                              1;
                                                      safeSetState(() {});
                                                    },
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .columbiaBlue,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .jett,
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    12.0,
                                                                    10.0,
                                                                    12.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Container(
                                                              width: 24.0,
                                                              height: 24.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .jett,
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Icon(
                                                                  FFIcons
                                                                      .kaddPlus,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .white,
                                                                  size: 24.0,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        'Ajoutez une autre maladie',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
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
                                                            ),
                                                            Container(
                                                              width: 24.0,
                                                              height: 24.0,
                                                              decoration:
                                                                  BoxDecoration(),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                              ].divide(SizedBox(height: 20.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ]
                                .divide(SizedBox(height: 20.0))
                                .addToStart(SizedBox(height: 20.0)),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(),
                        child: Stack(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          children: [
                            CircularPercentIndicator(
                              percent: 0.81,
                              radius: 35.0,
                              lineWidth: 4.0,
                              animation: true,
                              animateFromLastPercent: true,
                              progressColor: FlutterFlowTheme.of(context).jett,
                              backgroundColor:
                                  FlutterFlowTheme.of(context).ashGray,
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'ADERE_QUESTION_09_Icon_Container_ON_TAP');
                                logFirebaseEvent(
                                    'Icon_Container_validate_form');
                                _model.isValidated = true;
                                if (_model.formKey.currentState == null ||
                                    !_model.formKey.currentState!.validate()) {
                                  safeSetState(
                                      () => _model.isValidated = false);
                                  return;
                                }
                                if (_model.dropDownValue1 == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: GestureDetector(
                                          onTap: () =>
                                              FocusScope.of(dialogContext)
                                                  .unfocus(),
                                          child: SelectionMaladieWidget(),
                                        ),
                                      );
                                    },
                                  );

                                  _model.isValidated = false;
                                  safeSetState(() {});
                                  return;
                                }
                                if (FFAppState().onboardLevel < 7) {
                                  logFirebaseEvent(
                                      'Icon_Container_backend_call');
                                  await UserIllnessTable().delete(
                                    matchingRows: (rows) => rows.eq(
                                      'user',
                                      currentUserUid,
                                    ),
                                  );
                                }
                                logFirebaseEvent('Icon_Container_backend_call');
                                _model.dr1 = await UserIllnessTable().queryRows(
                                  queryFn: (q) => q
                                      .eq(
                                        'user',
                                        currentUserUid,
                                      )
                                      .eq(
                                        'name',
                                        _model.dropDownValue1,
                                      ),
                                );
                                logFirebaseEvent('Icon_Container_backend_call');
                                _model.dr2 = await UserIllnessTable().queryRows(
                                  queryFn: (q) => q
                                      .eq(
                                        'user',
                                        currentUserUid,
                                      )
                                      .eq(
                                        'name',
                                        _model.dropDownValue2,
                                      ),
                                );
                                logFirebaseEvent('Icon_Container_backend_call');
                                _model.dr3 = await UserIllnessTable().queryRows(
                                  queryFn: (q) => q
                                      .eq(
                                        'user',
                                        currentUserUid,
                                      )
                                      .eq(
                                        'name',
                                        _model.dropDownValue3,
                                      ),
                                );
                                if (!(_model.dr1 != null &&
                                    (_model.dr1)!.isNotEmpty)) {
                                  logFirebaseEvent(
                                      'Icon_Container_backend_call');
                                  await UserIllnessTable().insert({
                                    'name': _model.dropDownValue1,
                                    'user': currentUserUid,
                                  });
                                }
                                if (_model.dropDownValue2 != null &&
                                    _model.dropDownValue2 != '') {
                                  if (!(_model.dr2 != null &&
                                      (_model.dr2)!.isNotEmpty)) {
                                    logFirebaseEvent(
                                        'Icon_Container_backend_call');
                                    await UserIllnessTable().insert({
                                      'name': _model.dropDownValue2,
                                      'user': currentUserUid,
                                    });
                                  }
                                }
                                if (_model.dropDownValue3 != null &&
                                    _model.dropDownValue3 != '') {
                                  if (!(_model.dr3 != null &&
                                      (_model.dr3)!.isNotEmpty)) {
                                    logFirebaseEvent(
                                        'Icon_Container_backend_call');
                                    await UserIllnessTable().insert({
                                      'name': _model.dropDownValue3,
                                      'user': currentUserUid,
                                    });
                                  }
                                }
                                if (FFAppState().onboardLevel < 7) {
                                  logFirebaseEvent(
                                      'Icon_Container_backend_call');
                                  await UsersTable().update(
                                    data: {
                                      'onboarding_question_level': 9,
                                    },
                                    matchingRows: (rows) => rows.eq(
                                      'id',
                                      currentUserUid,
                                    ),
                                  );
                                  logFirebaseEvent(
                                      'Icon_Container_navigate_to');

                                  context.pushNamed('ADERE_QUESTION_10');
                                } else {
                                  logFirebaseEvent(
                                      'Icon_Container_navigate_to');

                                  context
                                      .pushNamed('ADERE_DASHBOARD_MA_MALADIE');
                                }

                                safeSetState(() {});
                              },
                              child: Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).jett,
                                  shape: BoxShape.circle,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Icon(
                                    Icons.navigate_next_rounded,
                                    color: FlutterFlowTheme.of(context).white,
                                    size: 50.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
