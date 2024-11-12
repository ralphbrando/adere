import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'choice_chips_model.dart';
export 'choice_chips_model.dart';

class ChoiceChipsWidget extends StatefulWidget {
  const ChoiceChipsWidget({
    super.key,
    this.choices,
    required this.action,
  });

  final List<String>? choices;
  final Future Function()? action;

  @override
  State<ChoiceChipsWidget> createState() => _ChoiceChipsWidgetState();
}

class _ChoiceChipsWidgetState extends State<ChoiceChipsWidget> {
  late ChoiceChipsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChoiceChipsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowChoiceChips(
      options: widget!.choices!.map((label) => ChipData(label)).toList(),
      onChanged: (val) async {
        safeSetState(() => _model.choiceChipsValue = val?.firstOrNull);
        logFirebaseEvent('CHOICE_CHIPS_ChoiceChips_uvrah43w_ON_FOR');
        logFirebaseEvent('ChoiceChips_haptic_feedback');
        HapticFeedback.lightImpact();
        logFirebaseEvent('ChoiceChips_execute_callback');
        await widget.action?.call();
      },
      selectedChipStyle: ChipStyle(
        backgroundColor: FlutterFlowTheme.of(context).jett,
        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Inter',
              color: Colors.white,
              fontSize: 14.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.w600,
            ),
        iconColor: Color(0x00000000),
        iconSize: 24.0,
        labelPadding: EdgeInsetsDirectional.fromSTEB(102.0, 10.0, 102.0, 9.0),
        elevation: 0.0,
        borderRadius: BorderRadius.circular(50.0),
      ),
      unselectedChipStyle: ChipStyle(
        backgroundColor: FlutterFlowTheme.of(context).jett,
        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Inter',
              color: Colors.white,
              fontSize: 14.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.w600,
            ),
        iconColor: Color(0x00000000),
        iconSize: 24.0,
        labelPadding: EdgeInsetsDirectional.fromSTEB(102.0, 10.0, 102.0, 9.0),
        elevation: 0.0,
        borderWidth: 2.0,
        borderRadius: BorderRadius.circular(50.0),
      ),
      chipSpacing: 20.0,
      rowSpacing: 20.0,
      multiselect: false,
      alignment: WrapAlignment.start,
      controller: _model.choiceChipsValueController ??=
          FormFieldController<List<String>>(
        [],
      ),
      wrapped: true,
    );
  }
}
