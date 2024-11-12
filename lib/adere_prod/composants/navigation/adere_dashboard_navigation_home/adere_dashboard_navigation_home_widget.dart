import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'adere_dashboard_navigation_home_model.dart';
export 'adere_dashboard_navigation_home_model.dart';

class AdereDashboardNavigationHomeWidget extends StatefulWidget {
  const AdereDashboardNavigationHomeWidget({super.key});

  @override
  State<AdereDashboardNavigationHomeWidget> createState() =>
      _AdereDashboardNavigationHomeWidgetState();
}

class _AdereDashboardNavigationHomeWidgetState
    extends State<AdereDashboardNavigationHomeWidget> {
  late AdereDashboardNavigationHomeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdereDashboardNavigationHomeModel());

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

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('ADERE_DASHBOARD_NAVIGATION_HOME_Text_Row');
                  logFirebaseEvent('Text_Row_action_block');
                  await action_blocks.adereDashboardHomeNav(
                    context,
                    adereDashboardHomeNavUpdate: '1',
                  );
                  logFirebaseEvent('Text_Row_navigate_to');

                  context.pushNamed('ADERE_DASHBOARD');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: FFAppState().AdereDashboardHomeNav1
                            ? FlutterFlowTheme.of(context).white
                            : FlutterFlowTheme.of(context).columbiaBlue,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 20.0, 10.0),
                        child: Text(
                          'À FAIRE',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: FFAppState().AdereDashboardHomeNav1
                                    ? FlutterFlowTheme.of(context).eerieBlack
                                    : FlutterFlowTheme.of(context).slateGray,
                                fontSize: 13.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('ADERE_DASHBOARD_NAVIGATION_HOME_Text_Row');
                  logFirebaseEvent('Text_Row_action_block');
                  await action_blocks.adereDashboardHomeNav(
                    context,
                    adereDashboardHomeNavUpdate: '2',
                  );
                  logFirebaseEvent('Text_Row_navigate_to');

                  context.pushNamed('ADERE_DASHBOARD_MON_SUIVI');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: FFAppState().AdereDashboardHomeNav2
                            ? FlutterFlowTheme.of(context).white
                            : FlutterFlowTheme.of(context).columbiaBlue,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 20.0, 10.0),
                        child: Text(
                          'MON SUIVI',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: FFAppState().AdereDashboardHomeNav2
                                    ? FlutterFlowTheme.of(context).eerieBlack
                                    : FlutterFlowTheme.of(context).slateGray,
                                fontSize: 13.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('ADERE_DASHBOARD_NAVIGATION_HOME_Text_Row');
                  logFirebaseEvent('Text_Row_action_block');
                  await action_blocks.adereDashboardHomeNav(
                    context,
                    adereDashboardHomeNavUpdate: '3',
                  );
                  logFirebaseEvent('Text_Row_navigate_to');

                  context.pushNamed('ADERE_DASHBOARD_MON_TRAITEMENT');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: FFAppState().AdereDashboardHomeNav3
                            ? FlutterFlowTheme.of(context).white
                            : FlutterFlowTheme.of(context).columbiaBlue,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 20.0, 10.0),
                        child: Text(
                          'MON TRAITEMENT',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: FFAppState().AdereDashboardHomeNav3
                                    ? FlutterFlowTheme.of(context).eerieBlack
                                    : FlutterFlowTheme.of(context).slateGray,
                                fontSize: 13.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('ADERE_DASHBOARD_NAVIGATION_HOME_Text_Row');
                  logFirebaseEvent('Text_Row_action_block');
                  await action_blocks.adereDashboardHomeNav(
                    context,
                    adereDashboardHomeNavUpdate: '4',
                  );
                  logFirebaseEvent('Text_Row_navigate_to');

                  context.pushNamed('ADERE_DASHBOARD_MA_MALADIE');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: FFAppState().AdereDashboardHomeNav4
                            ? FlutterFlowTheme.of(context).white
                            : FlutterFlowTheme.of(context).columbiaBlue,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 20.0, 10.0),
                        child: Text(
                          'MA MALADIE',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: FFAppState().AdereDashboardHomeNav4
                                    ? FlutterFlowTheme.of(context).eerieBlack
                                    : FlutterFlowTheme.of(context).slateGray,
                                fontSize: 13.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]
                .divide(SizedBox(width: 6.0))
                .addToStart(SizedBox(width: 20.0))
                .addToEnd(SizedBox(width: 20.0)),
          ),
        ),
      ),
    );
  }
}
