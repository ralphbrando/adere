import '/adere_prod/composants/navigation/adere_dashboard_header/adere_dashboard_header_widget.dart';
import '/adere_prod/composants/navigation/adere_dashboard_navigation_bottom/adere_dashboard_navigation_bottom_widget.dart';
import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'adere_medicament_add03_model.dart';
export 'adere_medicament_add03_model.dart';

class AdereMedicamentAdd03Widget extends StatefulWidget {
  const AdereMedicamentAdd03Widget({
    super.key,
    required this.body,
  });

  final dynamic body;

  @override
  State<AdereMedicamentAdd03Widget> createState() =>
      _AdereMedicamentAdd03WidgetState();
}

class _AdereMedicamentAdd03WidgetState
    extends State<AdereMedicamentAdd03Widget> {
  late AdereMedicamentAdd03Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdereMedicamentAdd03Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ADERE_MEDICAMENT_ADD_03'});
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
                                    'ADERE_MEDICAMENT_ADD_03_Text_uppjmqd5_ON');
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
                                              'À quelle fréquence prenez-vous ce médicament ?',
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
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .white,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .jett,
                                            width: 2.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: FlutterFlowRadioButton(
                                            options: [
                                              'Tous les jours',
                                              'Certains jours de la semaine'
                                            ].toList(),
                                            onChanged: (val) async {
                                              safeSetState(() {});
                                              logFirebaseEvent(
                                                  'ADERE_MEDICAMENT_ADD_03_RadioButton_xv4p');
                                              if (_model.radioButtonValue ==
                                                  'Tous les jours') {
                                                logFirebaseEvent(
                                                    'RadioButton_backend_call');
                                                await UserPackagesTable()
                                                    .update(
                                                  data: {
                                                    'take_monday': 1,
                                                    'take_tuesday': 1,
                                                    'take_wednesday': 1,
                                                    'take_thursday': 1,
                                                    'take_friday': 1,
                                                    'take_saturday': 1,
                                                    'take_sunday': 1,
                                                  },
                                                  matchingRows: (rows) => rows
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
                                                logFirebaseEvent(
                                                    'RadioButton_update_app_state');
                                                FFAppState().daysVisibile =
                                                    false;
                                                safeSetState(() {});
                                              } else {
                                                logFirebaseEvent(
                                                    'RadioButton_update_app_state');
                                                FFAppState().daysVisibile =
                                                    true;
                                                safeSetState(() {});
                                              }
                                            },
                                            controller: _model
                                                    .radioButtonValueController ??=
                                                FormFieldController<String>(
                                                    '0'),
                                            optionHeight: 28.0,
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .eerieBlack,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                            selectedTextStyle:
                                                FlutterFlowTheme.of(context)
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
                                            buttonPosition:
                                                RadioButtonPosition.left,
                                            direction: Axis.vertical,
                                            radioButtonColor:
                                                FlutterFlowTheme.of(context)
                                                    .eerieBlack,
                                            inactiveRadioButtonColor:
                                                FlutterFlowTheme.of(context)
                                                    .eerieBlack,
                                            toggleable: false,
                                            horizontalAlignment:
                                                WrapAlignment.start,
                                            verticalAlignment:
                                                WrapCrossAlignment.start,
                                          ),
                                        ),
                                      ),
                                      if (FFAppState().daysVisibile)
                                        Container(
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
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: FlutterFlowCheckboxGroup(
                                              options: [
                                                'Lundi',
                                                'Mardi',
                                                'Mercredi',
                                                'Jeudi',
                                                'Vendredi',
                                                'Samedi',
                                                'Dimanche'
                                              ],
                                              onChanged: (val) async {
                                                safeSetState(() => _model
                                                    .checkboxGroupValues = val);
                                                logFirebaseEvent(
                                                    'ADERE_MEDICAMENT_ADD_03_CheckboxGroup_pe');
                                                logFirebaseEvent(
                                                    'CheckboxGroup_backend_call');
                                                await UserPackagesTable()
                                                    .update(
                                                  data: {
                                                    'take_monday': FFAppState()
                                                                .daysVisibile &&
                                                            _model
                                                                .checkboxGroupValues!
                                                                .contains(
                                                                    'Lundi')
                                                        ? 1
                                                        : 0,
                                                    'take_tuesday': FFAppState()
                                                                .daysVisibile &&
                                                            _model
                                                                .checkboxGroupValues!
                                                                .contains(
                                                                    'Mardi')
                                                        ? 1
                                                        : 0,
                                                    'take_wednesday': FFAppState()
                                                                .daysVisibile &&
                                                            _model
                                                                .checkboxGroupValues!
                                                                .contains(
                                                                    'Mercredi')
                                                        ? 1
                                                        : 0,
                                                    'take_thursday': FFAppState()
                                                                .daysVisibile &&
                                                            _model
                                                                .checkboxGroupValues!
                                                                .contains(
                                                                    'Jeudi')
                                                        ? 1
                                                        : 0,
                                                    'take_friday': FFAppState()
                                                                .daysVisibile &&
                                                            _model
                                                                .checkboxGroupValues!
                                                                .contains(
                                                                    'Vendredi')
                                                        ? 1
                                                        : 0,
                                                    'take_saturday': FFAppState()
                                                                .daysVisibile &&
                                                            _model
                                                                .checkboxGroupValues!
                                                                .contains(
                                                                    'Samedi')
                                                        ? 1
                                                        : 0,
                                                    'take_sunday': FFAppState()
                                                                .daysVisibile &&
                                                            _model
                                                                .checkboxGroupValues!
                                                                .contains(
                                                                    'Dimanche')
                                                        ? 1
                                                        : 0,
                                                  },
                                                  matchingRows: (rows) => rows
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
                                              },
                                              controller: _model
                                                      .checkboxGroupValueController ??=
                                                  FormFieldController<
                                                      List<String>>(
                                                List.from(['0'] ?? []),
                                              ),
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .jett,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .white,
                                              checkboxBorderColor:
                                                  Color(0x00000000),
                                              textStyle: FlutterFlowTheme.of(
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
                                              checkboxBorderRadius:
                                                  BorderRadius.circular(2.0),
                                              initialized:
                                                  _model.checkboxGroupValues !=
                                                      null,
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
                                'ADERE_MEDICAMENT_ADD_03_Button_Container');
                            logFirebaseEvent('Button_Container_navigate_to');

                            context.pushNamed(
                              'ADERE_MEDICAMENT_ADD_04',
                              queryParameters: {
                                'body': serializeParam(
                                  widget!.body,
                                  ParamType.JSON,
                                ),
                              }.withoutNulls,
                            );
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
