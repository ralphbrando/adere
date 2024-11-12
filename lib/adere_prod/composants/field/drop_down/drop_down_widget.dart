import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'drop_down_model.dart';
export 'drop_down_model.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({
    super.key,
    this.parameter1,
    this.parameter2,
  });

  final dynamic parameter1;
  final List<String>? parameter2;

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  late DropDownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DropDownModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowDropDown<String>(
      controller: _model.dropDownValueController ??=
          FormFieldController<String>(null),
      options: widget!.parameter2!,
      onChanged: (val) async {
        safeSetState(() => _model.dropDownValue = val);
        logFirebaseEvent('DROP_DOWN_DropDown_o2w55aef_ON_FORM_WIDG');
        logFirebaseEvent('DropDown_update_app_state');
        FFAppState().dropdownvalue = _model.dropDownValue!;
        FFAppState().update(() {});
      },
      width: 300.0,
      height: 50.0,
      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Inter',
            color: FlutterFlowTheme.of(context).eerieBlack,
            fontSize: 14.0,
            letterSpacing: 0.0,
            fontWeight: FontWeight.w600,
          ),
      hintText: widget!.parameter1?.toString(),
      icon: Icon(
        Icons.keyboard_arrow_down_rounded,
        color: FlutterFlowTheme.of(context).jett,
        size: 36.0,
      ),
      fillColor: FlutterFlowTheme.of(context).white,
      elevation: 2.0,
      borderColor: FlutterFlowTheme.of(context).jett,
      borderWidth: 2.0,
      borderRadius: 10.0,
      margin: EdgeInsetsDirectional.fromSTEB(20.0, 4.0, 20.0, 4.0),
      hidesUnderline: true,
      isOverButton: false,
      isSearchable: false,
      isMultiSelect: false,
    );
  }
}
