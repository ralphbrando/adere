import '/adere_prod/composants/dialog/selection_maladie/selection_maladie_widget.dart';
import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'adere_question09_widget.dart' show AdereQuestion09Widget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class AdereQuestion09Model extends FlutterFlowModel<AdereQuestion09Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // Stores action output result for [Validate Form] action in Icon_Container widget.
  bool? isValidated;
  // Stores action output result for [Backend Call - Query Rows] action in Icon_Container widget.
  List<UserIllnessRow>? dr1;
  // Stores action output result for [Backend Call - Query Rows] action in Icon_Container widget.
  List<UserIllnessRow>? dr2;
  // Stores action output result for [Backend Call - Query Rows] action in Icon_Container widget.
  List<UserIllnessRow>? dr3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
