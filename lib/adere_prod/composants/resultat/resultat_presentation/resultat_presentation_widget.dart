import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'resultat_presentation_model.dart';
export 'resultat_presentation_model.dart';

class ResultatPresentationWidget extends StatefulWidget {
  const ResultatPresentationWidget({
    super.key,
    this.image,
    this.text1,
    String? text2,
  }) : this.text2 = text2 ?? '-';

  final String? image;
  final String? text1;
  final String text2;

  @override
  State<ResultatPresentationWidget> createState() =>
      _ResultatPresentationWidgetState();
}

class _ResultatPresentationWidgetState extends State<ResultatPresentationWidget>
    with TickerProviderStateMixin {
  late ResultatPresentationModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResultatPresentationModel());

    animationsMap.addAll({
      'markdownOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 10.0.ms,
            duration: 800.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 10.0.ms,
            duration: 800.0.ms,
            begin: Offset(0.0, 30.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(40.0, 25.0, 40.0, 25.0),
      child: Container(
        width: 300.0,
        decoration: BoxDecoration(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Image.network(
                        widget!.image!,
                        width: 137.0,
                        height: 175.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                      child: MarkdownBody(
                        data: widget!.text1!,
                        selectable: true,
                        onTapLink: (_, url, __) => launchURL(url!),
                      ).animateOnPageLoad(
                          animationsMap['markdownOnPageLoadAnimation']!),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(35.0, 25.0, 35.0, 25.0),
                child: Text(
                  ' ',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        lineHeight: 1.2,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
