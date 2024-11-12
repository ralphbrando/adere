import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'adere_dashboard_navigation_saisies_model.dart';
export 'adere_dashboard_navigation_saisies_model.dart';

class AdereDashboardNavigationSaisiesWidget extends StatefulWidget {
  const AdereDashboardNavigationSaisiesWidget({super.key});

  @override
  State<AdereDashboardNavigationSaisiesWidget> createState() =>
      _AdereDashboardNavigationSaisiesWidgetState();
}

class _AdereDashboardNavigationSaisiesWidgetState
    extends State<AdereDashboardNavigationSaisiesWidget> {
  late AdereDashboardNavigationSaisiesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdereDashboardNavigationSaisiesModel());

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
                logFirebaseEvent('ADERE_DASHBOARD_NAVIGATION_SAISIES_Text_');
                logFirebaseEvent('Text_Row_action_block');
                await action_blocks.adereDashboardSaisiesNav(
                  context,
                  adereDashboardSaisiesNavUpdate: '1',
                );
                logFirebaseEvent('Text_Row_navigate_to');

                context.pushNamed('ADERE_DASHBOARD_SAISIES_M0');
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Material(
                    color: Colors.transparent,
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FFAppState().AdereDashboardSaisiesNav1
                            ? FlutterFlowTheme.of(context).jett
                            : FlutterFlowTheme.of(context).ashGray,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 10.0, 15.0, 10.0),
                        child: Text(
                          'Médicaments',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Inter',
                                color: FFAppState().AdereDashboardSaisiesNav1
                                    ? FlutterFlowTheme.of(context).white
                                    : FlutterFlowTheme.of(context).eerieBlack,
                                fontSize: 13.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
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
                logFirebaseEvent('ADERE_DASHBOARD_NAVIGATION_SAISIES_Text_');
                logFirebaseEvent('Text_Row_action_block');
                await action_blocks.adereDashboardSaisiesNav(
                  context,
                  adereDashboardSaisiesNavUpdate: '2',
                );
                logFirebaseEvent('Text_Row_navigate_to');

                context.pushNamed('ADERE_DASHBOARD_SAISIES_S1');
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Material(
                    color: Colors.transparent,
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FFAppState().AdereDashboardSaisiesNav2
                            ? FlutterFlowTheme.of(context).jett
                            : FlutterFlowTheme.of(context).ashGray,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 10.0, 15.0, 10.0),
                        child: Text(
                          'Symptômes',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Inter',
                                color: FFAppState().AdereDashboardSaisiesNav2
                                    ? FlutterFlowTheme.of(context).white
                                    : FlutterFlowTheme.of(context).eerieBlack,
                                fontSize: 13.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
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
                logFirebaseEvent('ADERE_DASHBOARD_NAVIGATION_SAISIES_Text_');
                logFirebaseEvent('Text_Row_action_block');
                await action_blocks.adereDashboardSaisiesNav(
                  context,
                  adereDashboardSaisiesNavUpdate: '3',
                );
                logFirebaseEvent('Text_Row_navigate_to');

                context.pushNamed('ADERE_DASHBOARD_SAISIES_MES1');
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Material(
                    color: Colors.transparent,
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FFAppState().AdereDashboardSaisiesNav3
                            ? FlutterFlowTheme.of(context).jett
                            : FlutterFlowTheme.of(context).ashGray,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 10.0, 15.0, 10.0),
                        child: Text(
                          'Mesures',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Inter',
                                color: FFAppState().AdereDashboardSaisiesNav3
                                    ? FlutterFlowTheme.of(context).white
                                    : FlutterFlowTheme.of(context).eerieBlack,
                                fontSize: 13.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ].divide(SizedBox(width: 6.0)),
        ),
      ),
    );
  }
}
