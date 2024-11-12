import '/adere_prod/composants/navigation/adere_dashboard_header/adere_dashboard_header_widget.dart';
import '/adere_prod/composants/navigation/adere_dashboard_navigation_bottom/adere_dashboard_navigation_bottom_widget.dart';
import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'adere_medicament_add02_widget.dart' show AdereMedicamentAdd02Widget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdereMedicamentAdd02Model
    extends FlutterFlowModel<AdereMedicamentAdd02Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for ADERE_DASHBOARD_HEADER component.
  late AdereDashboardHeaderModel adereDashboardHeaderModel;
  // Stores action output result for [Backend Call - Query Rows] action in Button_Container widget.
  List<PackagesRow>? packageExist;
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
