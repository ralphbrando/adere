import '/adere_prod/composants/navigation/adere_dashboard_header/adere_dashboard_header_widget.dart';
import '/adere_prod/composants/navigation/adere_dashboard_navigation_bottom/adere_dashboard_navigation_bottom_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'adere_dashboard_mes_services_widget.dart'
    show AdereDashboardMesServicesWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdereDashboardMesServicesModel
    extends FlutterFlowModel<AdereDashboardMesServicesWidget> {
  ///  State fields for stateful widgets in this page.

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
