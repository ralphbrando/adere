import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'my_result_popup_model.dart';
export 'my_result_popup_model.dart';

class MyResultPopupWidget extends StatefulWidget {
  const MyResultPopupWidget({
    super.key,
    this.resultPopupLabel,
    this.resultPopupValue,
    this.resultPopupText1,
    this.resultPopupText2,
    this.resultPopupText3,
  });

  final String? resultPopupLabel;
  final double? resultPopupValue;
  final String? resultPopupText1;
  final String? resultPopupText2;
  final String? resultPopupText3;

  @override
  State<MyResultPopupWidget> createState() => _MyResultPopupWidgetState();
}

class _MyResultPopupWidgetState extends State<MyResultPopupWidget> {
  late MyResultPopupModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyResultPopupModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
              borderRadius: BorderRadius.circular(0.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 25.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 375.0,
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 20.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FlutterFlowIconButton(
                              borderRadius: 20.0,
                              borderWidth: 1.0,
                              buttonSize: 40.0,
                              fillColor: FlutterFlowTheme.of(context).jett,
                              icon: Icon(
                                Icons.close_rounded,
                                color: FlutterFlowTheme.of(context).white,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'MY_RESULT_POPUP_close_rounded_ICN_ON_TAP');
                                logFirebaseEvent(
                                    'IconButton_close_dialog_drawer_etc');
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(),
                              child: Text(
                                valueOrDefault<String>(
                                  widget!.resultPopupLabel,
                                  'Text',
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: FlutterFlowTheme.of(context)
                                          .eerieBlack,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 25.0, 0.0, 25.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(),
                                child: CircularPercentIndicator(
                                  percent: widget!.resultPopupValue!,
                                  radius: 70.0,
                                  lineWidth: 16.0,
                                  animation: true,
                                  animateFromLastPercent: true,
                                  progressColor:
                                      FlutterFlowTheme.of(context).lightSkyBlue,
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).isabelline,
                                  center: Text(
                                    '78%',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .eerieBlack,
                                          fontSize: 32.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    valueOrDefault<String>(
                                      widget!.resultPopupText1,
                                      'Text',
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .eerieBlack,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 25.0, 0.0, 25.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        widget!.resultPopupText2,
                                        'Text',
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .eerieBlack,
                                            fontSize: 28.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      widget!.resultPopupText3,
                                      'Text',
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .eerieBlack,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
