import '/adere_prod/composants/navigation/adere_dashboard_header/adere_dashboard_header_widget.dart';
import '/adere_prod/composants/navigation/adere_dashboard_navigation_bottom/adere_dashboard_navigation_bottom_widget.dart';
import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'adere_dashboard_steps_widget.dart' show AdereDashboardStepsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdereDashboardStepsModel
    extends FlutterFlowModel<AdereDashboardStepsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (API STEPS)] action in ADERE_DASHBOARD_STEPS widget.
  ApiCallResponse? apiResultvf5;
  // Model for ADERE_DASHBOARD_HEADER component.
  late AdereDashboardHeaderModel adereDashboardHeaderModel;
  // Model for ADERE_DASHBOARD_NAVIGATION_BOTTOM component.
  late AdereDashboardNavigationBottomModel adereDashboardNavigationBottomModel;

  @override
  void initState(BuildContext context) {
    adereDashboardHeaderModel =
        createModel(context, () => AdereDashboardHeaderModel());
    adereDashboardNavigationBottomModel =
        createModel(context, () => AdereDashboardNavigationBottomModel());
  }

  @override
  void dispose() {
    adereDashboardHeaderModel.dispose();
    adereDashboardNavigationBottomModel.dispose();
  }
}
