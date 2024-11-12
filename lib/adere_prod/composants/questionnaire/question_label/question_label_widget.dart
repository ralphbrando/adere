import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'question_label_model.dart';
export 'question_label_model.dart';

class QuestionLabelWidget extends StatefulWidget {
  const QuestionLabelWidget({
    super.key,
    required this.background,
    required this.title,
  });

  final String? background;
  final String? title;

  @override
  State<QuestionLabelWidget> createState() => _QuestionLabelWidgetState();
}

class _QuestionLabelWidgetState extends State<QuestionLabelWidget> {
  late QuestionLabelModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuestionLabelModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).platinum,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            40.0, 40.0, 40.0, 40.0),
                        child: Text(
                          FFAppState().isQuestionLabel,
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).eerieBlack,
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 1.0),
                child: Container(
                  width: 60.0,
                  height: 64.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/adere_question_vector.png',
                      ).image,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).jett,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.question_mark_rounded,
                color: Colors.white,
                size: 36.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
