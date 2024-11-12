import '/adere_prod/composants/navigation/adere_dashboard_header/adere_dashboard_header_widget.dart';
import '/adere_prod/composants/navigation/adere_dashboard_navigation_bottom/adere_dashboard_navigation_bottom_widget.dart';
import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'adere_dashboard_saisies_s3_model.dart';
export 'adere_dashboard_saisies_s3_model.dart';

class AdereDashboardSaisiesS3Widget extends StatefulWidget {
  const AdereDashboardSaisiesS3Widget({super.key});

  @override
  State<AdereDashboardSaisiesS3Widget> createState() =>
      _AdereDashboardSaisiesS3WidgetState();
}

class _AdereDashboardSaisiesS3WidgetState
    extends State<AdereDashboardSaisiesS3Widget> {
  late AdereDashboardSaisiesS3Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdereDashboardSaisiesS3Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ADERE_DASHBOARD_SAISIES_S3'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('ADERE_DASHBOARD_SAISIES_S3_ADERE_DASHBOA');
      logFirebaseEvent('ADERE_DASHBOARD_SAISIES_S3_update_app_st');
      FFAppState().AdereDashboardHeaderNav1 = false;
      FFAppState().AdereDashboardHeaderNav2 = false;
      FFAppState().AdereDashboardHeaderNav3 = false;
      FFAppState().AdereDashboardHeaderNav4 = false;
      FFAppState().AdereDashboardBottomNav1 = false;
      FFAppState().AdereDashboardBottomNav2 = false;
      FFAppState().AdereDashboardBottomNav3 = true;
      FFAppState().AdereDashboardBottomNav4 = false;
      FFAppState().AdereDashboardBottomNav5 = false;
      FFAppState().AdereDashboardHomeNav1 = false;
      FFAppState().AdereDashboardHomeNav2 = false;
      FFAppState().AdereDashboardHomeNav3 = false;
      FFAppState().AdereDashboardHomeNav4 = false;
      FFAppState().AdereDashboardSaisiesNav1 = false;
      FFAppState().AdereDashboardSaisiesNav2 = true;
      FFAppState().AdereDashboardSaisiesNav3 = false;
      FFAppState().symptomBool = false;
      FFAppState().symptomMaladie = '';
      FFAppState().symptom = '';
      FFAppState().symptomIntensity = '';
      FFAppState().symptomTrigger = '';
      FFAppState().symptomImpact = '';
      FFAppState().symptomDate = '';
      safeSetState(() {});
    });

    _model.switchValue = false;
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
                                          'MES SYMPTÔMES',
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
                                            width: 141.0,
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
                            color: FlutterFlowTheme.of(context).columbiaBlue,
                            borderRadius: BorderRadius.circular(10.0),
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
                                          'Veuillez sélectionner les champs suivants.',
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
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Form(
                            key: _model.formKey,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).platinum,
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context).jett,
                                      width: 2.0,
                                    ),
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
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 10.0),
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
                                                    'Avez-vous un symtôme ?',
                                                    style: FlutterFlowTheme.of(
                                                            context)
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
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(),
                                          child: Switch.adaptive(
                                            value: _model.switchValue!,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .switchValue = newValue!);
                                              if (newValue!) {
                                                logFirebaseEvent(
                                                    'ADERE_DASHBOARD_SAISIES_S3_Switch_z2fgqd');
                                                logFirebaseEvent(
                                                    'Switch_update_app_state');
                                                FFAppState().symptomBool = true;
                                                safeSetState(() {});
                                              } else {
                                                logFirebaseEvent(
                                                    'ADERE_DASHBOARD_SAISIES_S3_Switch_z2fgqd');
                                                logFirebaseEvent(
                                                    'Switch_update_app_state');
                                                FFAppState().symptomBool =
                                                    false;
                                                safeSetState(() {});
                                              }
                                            },
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .white,
                                            activeTrackColor:
                                                FlutterFlowTheme.of(context)
                                                    .cambridgeBlue,
                                            inactiveTrackColor:
                                                FlutterFlowTheme.of(context)
                                                    .error,
                                            inactiveThumbColor:
                                                FlutterFlowTheme.of(context)
                                                    .white,
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 20.0)),
                                    ),
                                  ),
                                ),
                                if (FFAppState().symptomBool)
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: FutureBuilder<List<UserIllnessRow>>(
                                      future: UserIllnessTable().queryRows(
                                        queryFn: (q) => q.eq(
                                          'user',
                                          currentUserUid,
                                        ),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<UserIllnessRow>
                                            dropDownUserIllnessRowList =
                                            snapshot.data!;

                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownValueController1 ??=
                                              FormFieldController<String>(null),
                                          options: dropDownUserIllnessRowList
                                              .map((e) => e.name)
                                              .withoutNulls
                                              .toList(),
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropDownValue1 = val),
                                          width: 300.0,
                                          height: 50.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
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
                                          hintText: 'Sélectionnez une maladie',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .jett,
                                            size: 36.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .platinum,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context).jett,
                                          borderWidth: 2.0,
                                          borderRadius: 10.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 4.0, 20.0, 4.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                          labelText: '',
                                          labelTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    letterSpacing: 0.0,
                                                  ),
                                        );
                                      },
                                    ),
                                  ),
                                if (FFAppState().symptomBool)
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: FutureBuilder<List<SymptomRow>>(
                                      future: SymptomTable().queryRows(
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
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<SymptomRow>
                                            dropDownSymptomRowList =
                                            snapshot.data!;

                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownValueController2 ??=
                                              FormFieldController<String>(null),
                                          options: dropDownSymptomRowList
                                              .map((e) => e.name)
                                              .toList(),
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropDownValue2 = val),
                                          width: 300.0,
                                          height: 50.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
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
                                          hintText: 'Sélectionner un symptôme',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .jett,
                                            size: 36.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .platinum,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context).jett,
                                          borderWidth: 2.0,
                                          borderRadius: 10.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 4.0, 20.0, 4.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                          labelText: '',
                                          labelTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    letterSpacing: 0.0,
                                                  ),
                                        );
                                      },
                                    ),
                                  ),
                                if (FFAppState().symptomBool)
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: FlutterFlowDropDown<String>(
                                      controller:
                                          _model.dropDownValueController3 ??=
                                              FormFieldController<String>(null),
                                      options: [
                                        '0',
                                        '1',
                                        '2',
                                        '3',
                                        '4',
                                        '5',
                                        '6',
                                        '7',
                                        '8',
                                        '9',
                                        '10'
                                      ],
                                      onChanged: (val) => safeSetState(
                                          () => _model.dropDownValue3 = val),
                                      width: 300.0,
                                      height: 50.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .eerieBlack,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      hintText: 'Sélectionner l’intensité',
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color:
                                            FlutterFlowTheme.of(context).jett,
                                        size: 36.0,
                                      ),
                                      fillColor:
                                          FlutterFlowTheme.of(context).platinum,
                                      elevation: 2.0,
                                      borderColor:
                                          FlutterFlowTheme.of(context).jett,
                                      borderWidth: 2.0,
                                      borderRadius: 10.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 4.0, 20.0, 4.0),
                                      hidesUnderline: true,
                                      isOverButton: false,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                      labelText: '',
                                      labelTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                              ),
                                    ),
                                  ),
                                if (FFAppState().symptomBool)
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: FutureBuilder<List<TriggersRow>>(
                                      future: TriggersTable().queryRows(
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
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<TriggersRow>
                                            dropDownTriggersRowList =
                                            snapshot.data!;

                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownValueController4 ??=
                                              FormFieldController<String>(null),
                                          options: dropDownTriggersRowList
                                              .map((e) => e.name)
                                              .withoutNulls
                                              .toList(),
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropDownValue4 = val),
                                          width: 300.0,
                                          height: 50.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
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
                                          hintText:
                                              'Sélectionner le facteur déclenchant',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .jett,
                                            size: 36.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .platinum,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context).jett,
                                          borderWidth: 2.0,
                                          borderRadius: 10.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 4.0, 20.0, 4.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                          labelText: '',
                                          labelTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    letterSpacing: 0.0,
                                                  ),
                                        );
                                      },
                                    ),
                                  ),
                                if (FFAppState().symptomBool)
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: FutureBuilder<List<ImpactRow>>(
                                      future: ImpactTable().queryRows(
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
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<ImpactRow> dropDownImpactRowList =
                                            snapshot.data!;

                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownValueController5 ??=
                                              FormFieldController<String>(null),
                                          options: dropDownImpactRowList
                                              .map((e) => e.name)
                                              .withoutNulls
                                              .toList(),
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropDownValue5 = val),
                                          width: 300.0,
                                          height: 50.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
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
                                          hintText:
                                              'Sélectionner l’impact sur l’autonomie',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .jett,
                                            size: 36.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .platinum,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context).jett,
                                          borderWidth: 2.0,
                                          borderRadius: 10.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 4.0, 20.0, 4.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                          labelText: '',
                                          labelTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    letterSpacing: 0.0,
                                                  ),
                                        );
                                      },
                                    ),
                                  ),
                              ].divide(SizedBox(height: 20.0)),
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
                                'ADERE_DASHBOARD_SAISIES_S3_Button_Contai');
                            logFirebaseEvent(
                                'Button_Container_update_app_state');
                            FFAppState().symptom = _model.dropDownValue2!;
                            FFAppState().symptomBool = _model.switchValue!;
                            FFAppState().symptomImpact = _model.dropDownValue5!;
                            FFAppState().symptomMaladie =
                                _model.dropDownValue1!;
                            FFAppState().symptomTrigger =
                                _model.dropDownValue4!;
                            FFAppState().symptomIntensity =
                                _model.dropDownValue3!;
                            safeSetState(() {});
                            logFirebaseEvent('Button_Container_navigate_to');

                            context.pushNamed('ADERE_DASHBOARD_SAISIES_S4');
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 80.0,
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
