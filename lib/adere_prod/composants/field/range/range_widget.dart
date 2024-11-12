import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'range_model.dart';
export 'range_model.dart';

class RangeWidget extends StatefulWidget {
  const RangeWidget({
    super.key,
    this.labelStart,
    this.labelEnd,
    this.rangeStart,
    this.rangeEnd,
  });

  final String? labelStart;
  final String? labelEnd;
  final int? rangeStart;
  final int? rangeEnd;

  @override
  State<RangeWidget> createState() => _RangeWidgetState();
}

class _RangeWidgetState extends State<RangeWidget> {
  late RangeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RangeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
              child: Container(
                width: double.infinity,
                child: Stack(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (widget!.labelStart != null &&
                            widget!.labelStart != '')
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 5.0),
                                child: Text(
                                  widget!.labelStart!,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color:
                                            FlutterFlowTheme.of(context).jett,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 5.0, 5.0),
                              child: Text(
                                _model.sliderValue.toString(),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: FlutterFlowTheme.of(context)
                                          .eerieBlack,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        if (widget!.labelEnd != null && widget!.labelEnd != '')
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 5.0),
                                child: Text(
                                  widget!.labelEnd!,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color:
                                            FlutterFlowTheme.of(context).jett,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 35.0,
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        widget!.rangeStart?.toString(),
                        '0',
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context).eerieBlack,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget!.rangeEnd?.toString(),
                        '10',
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context).eerieBlack,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8.0, 56.0, 0.0, 0.0),
          child: SliderTheme(
            data: SliderThemeData(
              showValueIndicator: ShowValueIndicator.always,
            ),
            child: Slider.adaptive(
              activeColor: FlutterFlowTheme.of(context).jett,
              inactiveColor: FlutterFlowTheme.of(context).ashGray,
              min: valueOrDefault<double>(
                widget!.rangeStart?.toDouble(),
                0.0,
              ),
              max: valueOrDefault<double>(
                widget!.rangeEnd?.toDouble(),
                10.0,
              ),
              value: _model.sliderValue ??= widget!.rangeStart!.toDouble(),
              label: _model.sliderValue?.toStringAsFixed(0),
              onChanged: (newValue) async {
                newValue = double.parse(newValue.toStringAsFixed(0));
                safeSetState(() => _model.sliderValue = newValue);
                logFirebaseEvent('RANGE_Slider_2cckxkq2_ON_FORM_WIDGET_SEL');
                logFirebaseEvent('Slider_haptic_feedback');
                HapticFeedback.lightImpact();
              },
            ),
          ),
        ),
      ],
    );
  }
}
