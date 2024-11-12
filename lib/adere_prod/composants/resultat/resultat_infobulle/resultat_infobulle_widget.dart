import '/adere_prod/composants/dialog/dialog_infobulle/dialog_infobulle_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'resultat_infobulle_model.dart';
export 'resultat_infobulle_model.dart';

class ResultatInfobulleWidget extends StatefulWidget {
  const ResultatInfobulleWidget({
    super.key,
    this.valueDividedBy100,
    this.valueString,
    this.label,
    required this.value,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.progressbar,
    required this.isSlider,
    this.sliderTitle,
    this.sliderSubtitle,
    this.sliderBody,
    this.image,
    this.sliderImage,
    required this.sliderJson,
  });

  final double? valueDividedBy100;
  final String? valueString;
  final String? label;
  final int? value;
  final String? title;
  final String? subtitle;
  final String? body;
  final bool? progressbar;
  final bool? isSlider;
  final String? sliderTitle;
  final String? sliderSubtitle;
  final String? sliderBody;
  final String? image;
  final String? sliderImage;
  final dynamic sliderJson;

  @override
  State<ResultatInfobulleWidget> createState() =>
      _ResultatInfobulleWidgetState();
}

class _ResultatInfobulleWidgetState extends State<ResultatInfobulleWidget> {
  late ResultatInfobulleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResultatInfobulleModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          logFirebaseEvent('RESULTAT_INFOBULLE_Resultat_Row_ON_TAP');
          logFirebaseEvent('Resultat_Row_alert_dialog');
          await showDialog(
            context: context,
            builder: (dialogContext) {
              return Dialog(
                elevation: 0,
                insetPadding: EdgeInsets.zero,
                backgroundColor: Colors.transparent,
                alignment: AlignmentDirectional(0.0, 0.0)
                    .resolve(Directionality.of(context)),
                child: DialogInfobulleWidget(
                  value: widget!.valueDividedBy100,
                  title: widget!.title,
                  subtitle: widget!.subtitle,
                  body: widget!.body,
                  progressbar: widget!.progressbar!,
                  isSlider: widget!.isSlider!,
                  sliderTitle: widget!.sliderTitle,
                  sliderSubtitle: widget!.sliderSubtitle,
                  sliderBody: widget!.sliderBody,
                  image: widget!.image,
                  sliderImage: widget!.sliderImage,
                  result: widget!.valueString,
                  sliderJson: widget!.sliderJson!,
                ),
              );
            },
          );
        },
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).platinum,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          30.0, 10.0, 30.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            valueOrDefault<String>(
                              widget!.label,
                              '-',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color:
                                      FlutterFlowTheme.of(context).eerieBlack,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          if (widget!.progressbar ?? true)
                            Text(
                              widget!.valueString!,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color:
                                        FlutterFlowTheme.of(context).eerieBlack,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(30.0, 5.0, 30.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (widget!.progressbar ?? true)
                            Expanded(
                              child: LinearPercentIndicator(
                                percent: widget!.valueDividedBy100!,
                                lineHeight: 14.0,
                                animation: true,
                                animateFromLastPercent: true,
                                progressColor: () {
                                  if (widget!.valueDividedBy100! <= 0.3) {
                                    return FlutterFlowTheme.of(context).error;
                                  } else if (widget!.valueDividedBy100! <=
                                      0.6) {
                                    return FlutterFlowTheme.of(context)
                                        .naplesYellow;
                                  } else {
                                    return FlutterFlowTheme.of(context)
                                        .cambridgeBlue;
                                  }
                                }(),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).ashGray,
                                barRadius: Radius.circular(10.0),
                                padding: EdgeInsets.zero,
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
    );
  }
}
