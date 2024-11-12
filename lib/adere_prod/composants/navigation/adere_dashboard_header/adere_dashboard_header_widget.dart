import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'adere_dashboard_header_model.dart';
export 'adere_dashboard_header_model.dart';

class AdereDashboardHeaderWidget extends StatefulWidget {
  const AdereDashboardHeaderWidget({super.key});

  @override
  State<AdereDashboardHeaderWidget> createState() =>
      _AdereDashboardHeaderWidgetState();
}

class _AdereDashboardHeaderWidgetState
    extends State<AdereDashboardHeaderWidget> {
  late AdereDashboardHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdereDashboardHeaderModel());

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

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('ADERE_DASHBOARD_HEADER_Menu_Container_ON');
                  logFirebaseEvent('Menu_Container_action_block');
                  await action_blocks.adereDashboardHeaderNav(
                    context,
                    adereDashboardHeaderNavUpdate: '1',
                  );
                  logFirebaseEvent('Menu_Container_navigate_to');

                  context.pushNamed('ADERE_DASHBOARD_MENU');
                },
                child: Container(
                  decoration: BoxDecoration(),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'ADERE_DASHBOARD_HEADER_Icon_copv01q6_ON_');
                      logFirebaseEvent('Icon_auth');
                      GoRouter.of(context).prepareAuthEvent();
                      await authManager.signOut();
                      GoRouter.of(context).clearRedirectLocation();

                      context.goNamedAuth('ADERE_INSCRIPTION', context.mounted);
                    },
                    child: Icon(
                      Icons.menu,
                      color: FFAppState().AdereDashboardHeaderNav1
                          ? FlutterFlowTheme.of(context).slateGray
                          : FlutterFlowTheme.of(context).black,
                      size: 24.0,
                    ),
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('ADERE_DASHBOARD_HEADER_Logotype_Containe');
                  logFirebaseEvent('Logotype_Container_action_block');
                  await action_blocks.adereDashboardHeaderNav(
                    context,
                    adereDashboardHeaderNavUpdate: '2',
                  );
                  logFirebaseEvent('Logotype_Container_navigate_to');

                  context.pushNamed('ADERE_DASHBOARD');
                },
                child: Container(
                  width: 72.0,
                  decoration: BoxDecoration(),
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        FFIcons.kadereLogotype,
                        color: FlutterFlowTheme.of(context).black,
                        size: 22.0,
                      ),
                    ].divide(SizedBox(width: 2.0)),
                  ),
                ),
              ),
            ].divide(SizedBox(width: 10.0)),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('ADERE_DASHBOARD_HEADER_Alertes_Container');
                  logFirebaseEvent('Alertes_Container_action_block');
                  await action_blocks.adereDashboardHeaderNav(
                    context,
                    adereDashboardHeaderNavUpdate: '3',
                  );
                  logFirebaseEvent('Alertes_Container_navigate_to');

                  context.pushNamed('ADERE_DASHBOARD_MES_ALERTES');
                },
                child: Container(
                  decoration: BoxDecoration(),
                  alignment: AlignmentDirectional(1.0, 0.0),
                  child: Stack(
                    alignment: AlignmentDirectional(0.7, -0.7),
                    children: [
                      Icon(
                        FFIcons.kbell,
                        color: FFAppState().AdereDashboardHeaderNav3
                            ? FlutterFlowTheme.of(context).slateGray
                            : FlutterFlowTheme.of(context).black,
                        size: 24.0,
                      ),
                      Container(
                        width: 10.0,
                        height: 10.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: FFAppState().AdereDashboardHeaderNav3
                                ? FlutterFlowTheme.of(context).slateGray
                                : Colors.black,
                            width: 1.0,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: 4.0,
                            height: 4.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).error,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('ADERE_DASHBOARD_HEADER_Account_Container');
                  logFirebaseEvent('Account_Container_action_block');
                  await action_blocks.adereDashboardHeaderNav(
                    context,
                    adereDashboardHeaderNavUpdate: '4',
                  );
                  logFirebaseEvent('Account_Container_navigate_to');

                  context.pushNamed('ADERE_DASHBOARD_MON_COMPTE');
                },
                child: Container(
                  decoration: BoxDecoration(),
                  child: Icon(
                    FFIcons.kuser,
                    color: FFAppState().AdereDashboardHeaderNav4
                        ? FlutterFlowTheme.of(context).slateGray
                        : FlutterFlowTheme.of(context).black,
                    size: 24.0,
                  ),
                ),
              ),
            ].divide(SizedBox(width: 10.0)),
          ),
        ),
      ],
    );
  }
}
