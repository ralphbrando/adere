import '/adere_prod/composants/navigation/adere_dashboard_header/adere_dashboard_header_widget.dart';
import '/adere_prod/composants/navigation/adere_dashboard_navigation_bottom/adere_dashboard_navigation_bottom_widget.dart';
import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'adere_medicament_add05_p2_b_widget.dart'
    show AdereMedicamentAdd05P2BWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdereMedicamentAdd05P2BModel
    extends FlutterFlowModel<AdereMedicamentAdd05P2BWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey3 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey6 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey7 = GlobalKey<FormState>();
  // Model for ADERE_DASHBOARD_HEADER component.
  late AdereDashboardHeaderModel adereDashboardHeaderModel;
  // State field(s) for DropDays widget.
  String? dropDaysValue;
  FormFieldController<String>? dropDaysValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // State field(s) for DropDown widget.
  String? dropDownValue5;
  FormFieldController<String>? dropDownValueController5;
  // State field(s) for DropDown widget.
  String? dropDownValue6;
  FormFieldController<String>? dropDownValueController6;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController4;

  // State field(s) for DropDown widget.
  String? dropDownValue7;
  FormFieldController<String>? dropDownValueController7;
  // State field(s) for DropDown widget.
  String? dropDownValue8;
  FormFieldController<String>? dropDownValueController8;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController5;

  // State field(s) for DropDown widget.
  String? dropDownValue9;
  FormFieldController<String>? dropDownValueController9;
  // State field(s) for DropDown widget.
  String? dropDownValue10;
  FormFieldController<String>? dropDownValueController10;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController6;

  // State field(s) for DropDown widget.
  String? dropDownValue11;
  FormFieldController<String>? dropDownValueController11;
  // State field(s) for DropDown widget.
  String? dropDownValue12;
  FormFieldController<String>? dropDownValueController12;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController7;

  // State field(s) for DropDown widget.
  String? dropDownValue13;
  FormFieldController<String>? dropDownValueController13;
  // State field(s) for DropDown widget.
  String? dropDownValue14;
  FormFieldController<String>? dropDownValueController14;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController8;

  // State field(s) for DropDown widget.
  String? dropDownValue15;
  FormFieldController<String>? dropDownValueController15;
  // State field(s) for DropDown widget.
  String? dropDownValue16;
  FormFieldController<String>? dropDownValueController16;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController9;

  // State field(s) for DropDown widget.
  String? dropDownValue17;
  FormFieldController<String>? dropDownValueController17;
  // State field(s) for DropDown widget.
  String? dropDownValue18;
  FormFieldController<String>? dropDownValueController18;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController10;

  // State field(s) for DropDown widget.
  String? dropDownValue19;
  FormFieldController<String>? dropDownValueController19;
  // State field(s) for DropDown widget.
  String? dropDownValue20;
  FormFieldController<String>? dropDownValueController20;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController11;

  // State field(s) for DropDown widget.
  String? dropDownValue21;
  FormFieldController<String>? dropDownValueController21;
  // State field(s) for DropDown widget.
  String? dropDownValue22;
  FormFieldController<String>? dropDownValueController22;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController12;

  // State field(s) for DropDown widget.
  String? dropDownValue23;
  FormFieldController<String>? dropDownValueController23;
  // State field(s) for DropDown widget.
  String? dropDownValue24;
  FormFieldController<String>? dropDownValueController24;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController13;

  // State field(s) for DropDown widget.
  String? dropDownValue25;
  FormFieldController<String>? dropDownValueController25;
  // State field(s) for DropDown widget.
  String? dropDownValue26;
  FormFieldController<String>? dropDownValueController26;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController14;

  // State field(s) for DropDown widget.
  String? dropDownValue27;
  FormFieldController<String>? dropDownValueController27;
  // State field(s) for DropDown widget.
  String? dropDownValue28;
  FormFieldController<String>? dropDownValueController28;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController15;

  // State field(s) for DropDown widget.
  String? dropDownValue29;
  FormFieldController<String>? dropDownValueController29;
  // State field(s) for DropDown widget.
  String? dropDownValue30;
  FormFieldController<String>? dropDownValueController30;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController16;

  // State field(s) for DropDown widget.
  String? dropDownValue31;
  FormFieldController<String>? dropDownValueController31;
  // State field(s) for DropDown widget.
  String? dropDownValue32;
  FormFieldController<String>? dropDownValueController32;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController17;

  // State field(s) for DropDown widget.
  String? dropDownValue33;
  FormFieldController<String>? dropDownValueController33;
  // State field(s) for DropDown widget.
  String? dropDownValue34;
  FormFieldController<String>? dropDownValueController34;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController18;

  // State field(s) for DropDown widget.
  String? dropDownValue35;
  FormFieldController<String>? dropDownValueController35;
  // State field(s) for DropDown widget.
  String? dropDownValue36;
  FormFieldController<String>? dropDownValueController36;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController19;

  // State field(s) for DropDown widget.
  String? dropDownValue37;
  FormFieldController<String>? dropDownValueController37;
  // State field(s) for DropDown widget.
  String? dropDownValue38;
  FormFieldController<String>? dropDownValueController38;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController20;

  // State field(s) for DropDown widget.
  String? dropDownValue39;
  FormFieldController<String>? dropDownValueController39;
  // State field(s) for DropDown widget.
  String? dropDownValue40;
  FormFieldController<String>? dropDownValueController40;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController21;

  // State field(s) for DropDown widget.
  String? dropDownValue41;
  FormFieldController<String>? dropDownValueController41;
  // State field(s) for DropDown widget.
  String? dropDownValue42;
  FormFieldController<String>? dropDownValueController42;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController22;

  // State field(s) for DropDown widget.
  String? dropDownValue43;
  FormFieldController<String>? dropDownValueController43;
  // State field(s) for DropDown widget.
  String? dropDownValue44;
  FormFieldController<String>? dropDownValueController44;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController23;

  // State field(s) for DropDown widget.
  String? dropDownValue45;
  FormFieldController<String>? dropDownValueController45;
  // State field(s) for DropDown widget.
  String? dropDownValue46;
  FormFieldController<String>? dropDownValueController46;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController24;

  // State field(s) for DropDown widget.
  String? dropDownValue47;
  FormFieldController<String>? dropDownValueController47;
  // State field(s) for DropDown widget.
  String? dropDownValue48;
  FormFieldController<String>? dropDownValueController48;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController25;

  // State field(s) for DropDown widget.
  String? dropDownValue49;
  FormFieldController<String>? dropDownValueController49;
  // State field(s) for DropDown widget.
  String? dropDownValue50;
  FormFieldController<String>? dropDownValueController50;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController26;

  // State field(s) for DropDown widget.
  String? dropDownValue51;
  FormFieldController<String>? dropDownValueController51;
  // State field(s) for DropDown widget.
  String? dropDownValue52;
  FormFieldController<String>? dropDownValueController52;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController27;

  // State field(s) for DropDown widget.
  String? dropDownValue53;
  FormFieldController<String>? dropDownValueController53;
  // State field(s) for DropDown widget.
  String? dropDownValue54;
  FormFieldController<String>? dropDownValueController54;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController28;

  // State field(s) for DropDown widget.
  String? dropDownValue55;
  FormFieldController<String>? dropDownValueController55;
  // State field(s) for DropDown widget.
  String? dropDownValue56;
  FormFieldController<String>? dropDownValueController56;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController29;

  // State field(s) for DropDown widget.
  String? dropDownValue57;
  FormFieldController<String>? dropDownValueController57;
  // State field(s) for DropDown widget.
  String? dropDownValue58;
  FormFieldController<String>? dropDownValueController58;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController30;

  // State field(s) for DropDown widget.
  String? dropDownValue59;
  FormFieldController<String>? dropDownValueController59;
  // State field(s) for DropDown widget.
  String? dropDownValue60;
  FormFieldController<String>? dropDownValueController60;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController31;

  // State field(s) for DropDown widget.
  String? dropDownValue61;
  FormFieldController<String>? dropDownValueController61;
  // State field(s) for DropDown widget.
  String? dropDownValue62;
  FormFieldController<String>? dropDownValueController62;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController32;

  // State field(s) for DropDown widget.
  String? dropDownValue63;
  FormFieldController<String>? dropDownValueController63;
  // State field(s) for DropDown widget.
  String? dropDownValue64;
  FormFieldController<String>? dropDownValueController64;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController33;

  // State field(s) for DropDown widget.
  String? dropDownValue65;
  FormFieldController<String>? dropDownValueController65;
  // State field(s) for DropDown widget.
  String? dropDownValue66;
  FormFieldController<String>? dropDownValueController66;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController34;

  // State field(s) for DropDown widget.
  String? dropDownValue67;
  FormFieldController<String>? dropDownValueController67;
  // State field(s) for DropDown widget.
  String? dropDownValue68;
  FormFieldController<String>? dropDownValueController68;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController35;

  // State field(s) for DropDown widget.
  String? dropDownValue69;
  FormFieldController<String>? dropDownValueController69;
  // State field(s) for DropDown widget.
  String? dropDownValue70;
  FormFieldController<String>? dropDownValueController70;
  // Stores action output result for [Backend Call - Query Rows] action in Button_Container widget.
  List<UserPackagesRow>? package;
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
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
    expandableExpandableController3.dispose();
    expandableExpandableController4.dispose();
    expandableExpandableController5.dispose();
    expandableExpandableController6.dispose();
    expandableExpandableController7.dispose();
    expandableExpandableController8.dispose();
    expandableExpandableController9.dispose();
    expandableExpandableController10.dispose();
    expandableExpandableController11.dispose();
    expandableExpandableController12.dispose();
    expandableExpandableController13.dispose();
    expandableExpandableController14.dispose();
    expandableExpandableController15.dispose();
    expandableExpandableController16.dispose();
    expandableExpandableController17.dispose();
    expandableExpandableController18.dispose();
    expandableExpandableController19.dispose();
    expandableExpandableController20.dispose();
    expandableExpandableController21.dispose();
    expandableExpandableController22.dispose();
    expandableExpandableController23.dispose();
    expandableExpandableController24.dispose();
    expandableExpandableController25.dispose();
    expandableExpandableController26.dispose();
    expandableExpandableController27.dispose();
    expandableExpandableController28.dispose();
    expandableExpandableController29.dispose();
    expandableExpandableController30.dispose();
    expandableExpandableController31.dispose();
    expandableExpandableController32.dispose();
    expandableExpandableController33.dispose();
    expandableExpandableController34.dispose();
    expandableExpandableController35.dispose();
    adereDashboardNavigationBottomModel.dispose();
  }
}
