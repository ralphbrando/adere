import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'adere_dashboard_navigation_bottom_model.dart';
export 'adere_dashboard_navigation_bottom_model.dart';

class AdereDashboardNavigationBottomWidget extends StatefulWidget {
  const AdereDashboardNavigationBottomWidget({super.key});

  @override
  State<AdereDashboardNavigationBottomWidget> createState() =>
      _AdereDashboardNavigationBottomWidgetState();
}

class _AdereDashboardNavigationBottomWidgetState
    extends State<AdereDashboardNavigationBottomWidget> {
  late AdereDashboardNavigationBottomModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdereDashboardNavigationBottomModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('ADERE_DASHBOARD_NAVIGATION_BOTTOM_Elemen');
                  logFirebaseEvent('Element_Row_action_block');
                  await action_blocks.adereDashboardBottomNav(
                    context,
                    adereDashboardBottomNavUpdate: '1',
                  );
                  logFirebaseEvent('Element_Row_navigate_to');

                  context.pushNamed('ADERE_DASHBOARD');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: FFAppState().AdereDashboardBottomNav1
                            ? FlutterFlowTheme.of(context).lightSkyBlue
                            : Color(0x00000000),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        FFIcons.kadereAccueil,
                        color: FFAppState().AdereDashboardBottomNav1
                            ? FlutterFlowTheme.of(context).black
                            : FlutterFlowTheme.of(context).jett,
                        size: 26.0,
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
                  logFirebaseEvent('ADERE_DASHBOARD_NAVIGATION_BOTTOM_Elemen');
                  logFirebaseEvent('Element_Row_action_block');
                  await action_blocks.adereDashboardBottomNav(
                    context,
                    adereDashboardBottomNavUpdate: '2',
                  );
                  logFirebaseEvent('Element_Row_navigate_to');

                  context.pushNamed('ADERE_ARMOIRE');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: FFAppState().AdereDashboardBottomNav2
                            ? FlutterFlowTheme.of(context).lightSkyBlue
                            : Color(0x00000000),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        FFIcons.kadereArmoire,
                        color: FFAppState().AdereDashboardBottomNav2
                            ? FlutterFlowTheme.of(context).black
                            : FlutterFlowTheme.of(context).jett,
                        size: 26.0,
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
                  logFirebaseEvent('ADERE_DASHBOARD_NAVIGATION_BOTTOM_Elemen');
                  logFirebaseEvent('Element_Row_action_block');
                  await action_blocks.adereDashboardBottomNav(
                    context,
                    adereDashboardBottomNavUpdate: '3',
                  );
                  logFirebaseEvent('Element_Row_navigate_to');

                  context.pushNamed('ADERE_DASHBOARD_SAISIES_M0');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 65.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50.0),
                          bottomRight: Radius.circular(50.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 45.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).lightSkyBlue,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              FFIcons.kadereSaisies,
                              color: FFAppState().AdereDashboardBottomNav3
                                  ? FlutterFlowTheme.of(context).black
                                  : FlutterFlowTheme.of(context).jett,
                              size: 22.0,
                            ),
                          ),
                        ],
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
                  logFirebaseEvent('ADERE_DASHBOARD_NAVIGATION_BOTTOM_Elemen');
                  logFirebaseEvent('Element_Row_action_block');
                  await action_blocks.adereDashboardBottomNav(
                    context,
                    adereDashboardBottomNavUpdate: '4',
                  );
                  logFirebaseEvent('Element_Row_navigate_to');

                  context.pushNamed('ADERE_DASHBOARD_MES_INFORMATIONS');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: FFAppState().AdereDashboardBottomNav4
                            ? FlutterFlowTheme.of(context).lightSkyBlue
                            : Color(0x00000000),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        FFIcons.kheartTick,
                        color: FFAppState().AdereDashboardBottomNav4
                            ? FlutterFlowTheme.of(context).black
                            : FlutterFlowTheme.of(context).jett,
                        size: 32.0,
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
                  logFirebaseEvent('ADERE_DASHBOARD_NAVIGATION_BOTTOM_Elemen');
                  logFirebaseEvent('Element_Row_action_block');
                  await action_blocks.adereDashboardBottomNav(
                    context,
                    adereDashboardBottomNavUpdate: '5',
                  );
                  logFirebaseEvent('Element_Row_navigate_to');

                  context.pushNamed('ADERE_DASHBOARD_MES_SERVICES');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: FFAppState().AdereDashboardBottomNav5
                            ? FlutterFlowTheme.of(context).lightSkyBlue
                            : Color(0x00000000),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        FFIcons.kadereServices,
                        color: FFAppState().AdereDashboardBottomNav5
                            ? FlutterFlowTheme.of(context).black
                            : FlutterFlowTheme.of(context).jett,
                        size: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
