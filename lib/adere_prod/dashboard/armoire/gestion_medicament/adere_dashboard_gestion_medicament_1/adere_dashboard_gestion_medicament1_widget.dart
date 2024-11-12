import '/adere_prod/composants/navigation/adere_dashboard_header/adere_dashboard_header_widget.dart';
import '/adere_prod/composants/navigation/adere_dashboard_navigation_bottom/adere_dashboard_navigation_bottom_widget.dart';
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
import 'adere_dashboard_gestion_medicament1_model.dart';
export 'adere_dashboard_gestion_medicament1_model.dart';

class AdereDashboardGestionMedicament1Widget extends StatefulWidget {
  const AdereDashboardGestionMedicament1Widget({
    super.key,
    required this.userpackage,
  });

  final int? userpackage;

  @override
  State<AdereDashboardGestionMedicament1Widget> createState() =>
      _AdereDashboardGestionMedicament1WidgetState();
}

class _AdereDashboardGestionMedicament1WidgetState
    extends State<AdereDashboardGestionMedicament1Widget> {
  late AdereDashboardGestionMedicament1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => AdereDashboardGestionMedicament1Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ADERE_DASHBOARD_GESTION_MEDICAMENT_1'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('ADERE_DASHBOARD_GESTION_MEDICAMENT_1_ADE');
      logFirebaseEvent('ADERE_DASHBOARD_GESTION_MEDICAMENT_1_upd');
      FFAppState().AdereDashboardHeaderNav1 = false;
      FFAppState().AdereDashboardHeaderNav2 = false;
      FFAppState().AdereDashboardHeaderNav3 = false;
      FFAppState().AdereDashboardHeaderNav4 = false;
      FFAppState().AdereDashboardBottomNav1 = false;
      FFAppState().AdereDashboardBottomNav2 = true;
      FFAppState().AdereDashboardBottomNav3 = false;
      FFAppState().AdereDashboardBottomNav4 = false;
      FFAppState().AdereDashboardBottomNav5 = false;
      FFAppState().AdereDashboardHomeNav1 = false;
      FFAppState().AdereDashboardHomeNav2 = false;
      FFAppState().AdereDashboardHomeNav3 = false;
      FFAppState().AdereDashboardHomeNav4 = false;
      FFAppState().AdereDashboardSaisiesNav1 = false;
      FFAppState().AdereDashboardSaisiesNav2 = false;
      FFAppState().AdereDashboardSaisiesNav3 = false;
      safeSetState(() {});
    });

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
              child: FutureBuilder<List<UserPackagesRow>>(
                future: UserPackagesTable().querySingleRow(
                  queryFn: (q) => q.eq(
                    'id',
                    widget!.userpackage,
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
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  List<UserPackagesRow> contentContainerUserPackagesRowList =
                      snapshot.data!;

                  final contentContainerUserPackagesRow =
                      contentContainerUserPackagesRowList.isNotEmpty
                          ? contentContainerUserPackagesRowList.first
                          : null;

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
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                              'GESTION DU MÉDICAMENT',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .eerieBlack,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 6.0, 0.0, 0.0),
                                              child: Container(
                                                width: 212.0,
                                                height: 5.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: FutureBuilder<List<PackagesRow>>(
                              future: PackagesTable().querySingleRow(
                                queryFn: (q) => q.eq(
                                  'package_id',
                                  contentContainerUserPackagesRow?.package,
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
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<PackagesRow>
                                    medicamentContainerPackagesRowList =
                                    snapshot.data!;

                                final medicamentContainerPackagesRow =
                                    medicamentContainerPackagesRowList
                                            .isNotEmpty
                                        ? medicamentContainerPackagesRowList
                                            .first
                                        : null;

                                return Container(
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
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  medicamentContainerPackagesRow!
                                                      .packageTitle!,
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
                                );
                              },
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
                                      decoration: BoxDecoration(),
                                      child: FlutterFlowDropDown<String>(
                                        controller: _model
                                                .dropDownValueController ??=
                                            FormFieldController<String>(null),
                                        options: ['1', '2', '3', '4', '5'],
                                        onChanged: (val) => safeSetState(
                                            () => _model.dropDownValue = val),
                                        width: 300.0,
                                        height: 50.0,
                                        textStyle: FlutterFlowTheme.of(context)
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
                                        hintText: 'Nombre de boite',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color:
                                              FlutterFlowTheme.of(context).jett,
                                          size: 36.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .platinum,
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
                                    'ADERE_DASHBOARD_GESTION_MEDICAMENT_1_But');
                                logFirebaseEvent(
                                    'Button_Container_validate_form');
                                if (_model.formKey.currentState == null ||
                                    !_model.formKey.currentState!.validate()) {
                                  return;
                                }
                                if (_model.dropDownValue == null) {
                                  return;
                                }
                                logFirebaseEvent(
                                    'Button_Container_backend_call');
                                await UserPackagesTable().update(
                                  data: {
                                    'boite_delivree': _model.dropDownValue,
                                  },
                                  matchingRows: (rows) => rows.eq(
                                    'id',
                                    contentContainerUserPackagesRow?.id,
                                  ),
                                );
                                logFirebaseEvent(
                                    'Button_Container_navigate_to');

                                context.pushNamed(
                                  'ADERE_DASHBOARD_GESTION_MEDICAMENT_2',
                                  queryParameters: {
                                    'package': serializeParam(
                                      widget!.userpackage,
                                      ParamType.int,
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
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Enregistrer',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: Colors.white,
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
                        ]
                            .divide(SizedBox(height: 20.0))
                            .addToStart(SizedBox(height: 20.0)),
                      ),
                    ),
                  );
                },
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
