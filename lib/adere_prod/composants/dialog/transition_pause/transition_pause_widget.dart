import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'transition_pause_model.dart';
export 'transition_pause_model.dart';

class TransitionPauseWidget extends StatefulWidget {
  const TransitionPauseWidget({super.key});

  @override
  State<TransitionPauseWidget> createState() => _TransitionPauseWidgetState();
}

class _TransitionPauseWidgetState extends State<TransitionPauseWidget>
    with TickerProviderStateMixin {
  late TransitionPauseModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransitionPauseModel());

    animationsMap.addAll({
      'iconOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 10.0.ms,
            duration: 4000.0.ms,
            begin: 0.0,
            end: -2.0,
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
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).isabelline,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(0.0),
          topRight: Radius.circular(0.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Material(
            color: Colors.transparent,
            elevation: 2.0,
            shape: const CircleBorder(),
            child: Container(
              width: 200.0,
              height: 200.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).lightSkyBlue,
                shape: BoxShape.circle,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).white,
                  width: 20.0,
                ),
              ),
              child: Icon(
                FFIcons.ktimerPause2,
                color: FlutterFlowTheme.of(context).jett,
                size: 90.0,
              ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation']!),
            ),
          ),
        ],
      ),
    );
  }
}
