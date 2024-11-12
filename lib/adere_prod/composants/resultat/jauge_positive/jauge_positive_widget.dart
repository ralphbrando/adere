import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'jauge_positive_model.dart';
export 'jauge_positive_model.dart';

class JaugePositiveWidget extends StatefulWidget {
  const JaugePositiveWidget({
    super.key,
    this.value,
    required this.valueDisplay,
    required this.isProgramme,
  });

  final double? value;
  final String? valueDisplay;
  final bool? isProgramme;

  @override
  State<JaugePositiveWidget> createState() => _JaugePositiveWidgetState();
}

class _JaugePositiveWidgetState extends State<JaugePositiveWidget> {
  late JaugePositiveModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JaugePositiveModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      percent: widget!.value!,
      radius: 70.0,
      lineWidth: 16.0,
      animation: true,
      animateFromLastPercent: true,
      progressColor: valueOrDefault<Color>(
        () {
          if (widget!.value! <= 0.3) {
            return FlutterFlowTheme.of(context).error;
          } else if (widget!.value! <= 0.6) {
            return FlutterFlowTheme.of(context).naplesYellow;
          } else {
            return FlutterFlowTheme.of(context).cambridgeBlue;
          }
        }(),
        FlutterFlowTheme.of(context).cambridgeBlue,
      ),
      backgroundColor: FlutterFlowTheme.of(context).isabelline,
      center: Text(
        widget!.valueDisplay!,
        style: FlutterFlowTheme.of(context).headlineSmall.override(
              fontFamily: 'Inter',
              color: FlutterFlowTheme.of(context).eerieBlack,
              fontSize: 32.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.w800,
            ),
      ),
    );
  }
}
