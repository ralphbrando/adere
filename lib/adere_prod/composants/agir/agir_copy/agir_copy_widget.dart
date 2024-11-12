import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'agir_copy_model.dart';
export 'agir_copy_model.dart';

class AgirCopyWidget extends StatefulWidget {
  const AgirCopyWidget({
    super.key,
    required this.agirAttributes,
    required this.toggleOpen,
    required this.isAgirContentOpen,
  });

  final AgirAttributesStruct? agirAttributes;
  final Future Function()? toggleOpen;
  final bool? isAgirContentOpen;

  @override
  State<AgirCopyWidget> createState() => _AgirCopyWidgetState();
}

class _AgirCopyWidgetState extends State<AgirCopyWidget>
    with TickerProviderStateMixin {
  late AgirCopyModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AgirCopyModel());

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
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primary,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (!widget!.isAgirContentOpen!)
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(40.0, 10.0, 40.0, 5.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent('AGIR_COPY_COMP_ListContainer_ON_TAP');
                      logFirebaseEvent('ListContainer_update_component_state');
                      _model.isOpen = !_model.isOpen;
                      safeSetState(() {});
                      logFirebaseEvent('ListContainer_execute_callback');
                      await widget.toggleOpen?.call();
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: colorFromCssString(
                          FFAppState().codecolorlight,
                          defaultColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        borderRadius: BorderRadius.circular(200.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Container(
                                width: 55.0,
                                height: 55.0,
                                decoration: BoxDecoration(
                                  color: colorFromCssString(
                                    FFAppState().codecolor,
                                    defaultColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 6.0,
                                  ),
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    widget!.agirAttributes?.number,
                                    '00',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                valueOrDefault<String>(
                                  widget!.agirAttributes?.title,
                                  '00',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                              ),
                            ),
                            if (FFAppState()
                                    .agirStatusList
                                    .where((e) =>
                                        e.number ==
                                        widget!.agirAttributes?.number)
                                    .toList()
                                    .first
                                    .isRead ==
                                true)
                              Icon(
                                FFIcons.kvalid,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: Text(
                                'En\nsavoir\n+',
                                textAlign: TextAlign.end,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      lineHeight: 1.0,
                                    ),
                              ),
                            ),
                          ].divide(SizedBox(width: 10.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              if (_model.isOpen)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(33.0, 0.0, 33.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (widget!.agirAttributes?.image != 'toto')
                          Stack(
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(30.0),
                                      bottomRight: Radius.circular(30.0),
                                      topLeft: Radius.circular(0.0),
                                      topRight: Radius.circular(0.0),
                                    ),
                                    child: Image.network(
                                      widget!.agirAttributes!.image,
                                      width: double.infinity,
                                      height: 180.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        Container(
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 15.0, 10.0, 20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 15.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget!.agirAttributes?.insideTitle,
                                      '00',
                                    ),
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          lineHeight: 1.2,
                                        ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 15.0),
                                    child: MarkdownBody(
                                      data: widget!.agirAttributes!.insideText,
                                      selectable: true,
                                      onTapLink: (_, url, __) =>
                                          launchURL(url!),
                                    ).animateOnPageLoad(animationsMap[
                                        'markdownOnPageLoadAnimation']!),
                                  ),
                                ),
                                if ((widget!.agirAttributes?.media != 'toto') &&
                                    widget!.agirAttributes!.mediaVisible)
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: FlutterFlowVideoPlayer(
                                      path: widget!.agirAttributes!.media,
                                      videoType: VideoType.network,
                                      height: 180.0,
                                      autoPlay: false,
                                      looping: true,
                                      showControls: true,
                                      allowFullScreen: true,
                                      allowPlaybackSpeedMenu: false,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 25.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'AGIR_COPY_COMP_CONTINUER_BTN_ON_TAP');
                                logFirebaseEvent(
                                    'Button_update_component_state');
                                _model.isOpen = !_model.isOpen;
                                safeSetState(() {});
                                logFirebaseEvent('Button_execute_callback');
                                await widget.toggleOpen?.call();
                                logFirebaseEvent('Button_update_app_state');
                                FFAppState().agirStatusList = functions
                                    .updateAgirStatusList(
                                        FFAppState().agirStatusList.toList(),
                                        widget!.agirAttributes!.number)
                                    .toList()
                                    .cast<AgirStruct>();
                                _model.updatePage(() {});
                                if (FFAppState()
                                        .agirStatusList
                                        .where((e) => e.isRead == false)
                                        .toList()
                                        .length ==
                                    0) {
                                  logFirebaseEvent('Button_update_app_state');
                                  FFAppState().agirBlockerSubmit = true;
                                  _model.updatePage(() {});
                                  return;
                                } else {
                                  return;
                                }
                              },
                              text: 'Continuer',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 50.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).tertiary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 19.0,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(28.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
