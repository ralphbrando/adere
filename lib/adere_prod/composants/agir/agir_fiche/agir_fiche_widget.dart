import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'agir_fiche_model.dart';
export 'agir_fiche_model.dart';

class AgirFicheWidget extends StatefulWidget {
  const AgirFicheWidget({
    super.key,
    this.active,
    this.title,
    this.number,
    String? steptext,
    this.image,
    required this.sliders,
    required this.logo,
    required this.element,
    required this.last,
    String? insideTitle,
    String? insideText,
    required this.media,
    required this.medi,
    this.sequenceid,
  })  : this.steptext = steptext ?? ' ',
        this.insideTitle = insideTitle ?? ' ',
        this.insideText = insideText ?? ' ';

  final bool? active;
  final String? title;
  final String? number;
  final String steptext;
  final String? image;
  final dynamic sliders;
  final String? logo;
  final dynamic element;
  final int? last;
  final String insideTitle;
  final String insideText;
  final String? media;
  final bool? medi;
  final int? sequenceid;

  @override
  State<AgirFicheWidget> createState() => _AgirFicheWidgetState();
}

class _AgirFicheWidgetState extends State<AgirFicheWidget>
    with TickerProviderStateMixin {
  late AgirFicheModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AgirFicheModel());

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
              if (FFAppState().agirBlocker == false)
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(40.0, 10.0, 40.0, 5.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent('AGIR_FICHE_COMP_ListContainer_ON_TAP');
                      logFirebaseEvent('ListContainer_update_app_state');
                      FFAppState().bagir1 = false;
                      FFAppState().bagir2 = false;
                      FFAppState().bagir3 = false;
                      FFAppState().bagir4 = false;
                      FFAppState().bagir5 = false;
                      FFAppState().bagir6 = false;
                      FFAppState().bagir7 = false;
                      FFAppState().bagir8 = false;
                      FFAppState().bagir9 = false;
                      FFAppState().bagir10 = false;
                      FFAppState().tempoHide = true;
                      FFAppState().bagir11 = false;
                      FFAppState().bagir12 = false;
                      FFAppState().bagir13 = false;
                      FFAppState().bagir14 = false;
                      FFAppState().bagir15 = false;
                      FFAppState().bagir16 = false;
                      FFAppState().bagir17 = false;
                      FFAppState().bagir18 = false;
                      FFAppState().bagir19 = false;
                      FFAppState().bagir20 = false;
                      _model.updatePage(() {});
                      if (widget!.media == 'toto') {
                        logFirebaseEvent('ListContainer_update_app_state');
                        FFAppState().heightAgirVideo = 0;
                        safeSetState(() {});
                      } else {
                        logFirebaseEvent('ListContainer_update_app_state');
                        FFAppState().heightAgirVideo = 180;
                        safeSetState(() {});
                      }

                      if (widget!.image == 'toto') {
                        logFirebaseEvent('ListContainer_update_app_state');
                        FFAppState().heightAgir = 0;
                        safeSetState(() {});
                      } else {
                        logFirebaseEvent('ListContainer_update_app_state');
                        FFAppState().heightAgir = 180;
                        safeSetState(() {});
                      }

                      if (widget!.number == '1') {
                        logFirebaseEvent('ListContainer_update_app_state');
                        FFAppState().agir1 = true;
                        FFAppState().bagir1 = true;
                        safeSetState(() {});
                      }
                      if (widget!.number == '2') {
                        logFirebaseEvent('ListContainer_update_app_state');
                        FFAppState().agir2 = true;
                        FFAppState().bagir2 = true;
                        safeSetState(() {});
                      }
                      if (widget!.number == '3') {
                        logFirebaseEvent('ListContainer_update_app_state');
                        FFAppState().agir3 = true;
                        FFAppState().bagir3 = true;
                        safeSetState(() {});
                      }
                      if (widget!.number == '4') {
                        logFirebaseEvent('ListContainer_update_app_state');
                        FFAppState().agir4 = true;
                        FFAppState().bagir4 = true;
                        safeSetState(() {});
                      }
                      if (widget!.number == '5') {
                        logFirebaseEvent('ListContainer_update_app_state');
                        FFAppState().agir5 = true;
                        FFAppState().bagir5 = true;
                        safeSetState(() {});
                      }
                      if (widget!.number == '6') {
                        logFirebaseEvent('ListContainer_update_app_state');
                        FFAppState().agir6 = true;
                        FFAppState().bagir6 = true;
                        safeSetState(() {});
                      }
                      if (widget!.number == '7') {
                        logFirebaseEvent('ListContainer_update_app_state');
                        FFAppState().agir7 = true;
                        FFAppState().bagir7 = true;
                        safeSetState(() {});
                      }
                      if (widget!.number == '8') {
                        logFirebaseEvent('ListContainer_update_app_state');
                        FFAppState().agir8 = true;
                        FFAppState().bagir8 = true;
                        safeSetState(() {});
                      }
                      if (widget!.number == '9') {
                        logFirebaseEvent('ListContainer_update_app_state');
                        FFAppState().agir9 = true;
                        FFAppState().bagir9 = true;
                        safeSetState(() {});
                      }
                      if (widget!.number == '10') {
                        logFirebaseEvent('ListContainer_update_app_state');
                        FFAppState().agir10 = true;
                        FFAppState().bagir10 = true;
                        safeSetState(() {});
                      }
                      if (widget!.number == '11') {
                        logFirebaseEvent('ListContainer_update_app_state');
                        FFAppState().agir11 = true;
                        FFAppState().bagir11 = true;
                        safeSetState(() {});
                      }
                      if (widget!.number == '12') {
                        logFirebaseEvent('ListContainer_update_app_state');
                        FFAppState().agir12 = true;
                        FFAppState().bagir12 = true;
                        safeSetState(() {});
                      }
                      if (widget!.number == '13') {
                        logFirebaseEvent('ListContainer_update_app_state');
                        FFAppState().agir13 = true;
                        FFAppState().bagir13 = true;
                        safeSetState(() {});
                      }
                      if (widget!.number == '14') {
                        logFirebaseEvent('ListContainer_update_app_state');
                        FFAppState().agir14 = true;
                        FFAppState().bagir14 = true;
                        safeSetState(() {});
                      }
                      if (widget!.number == '15') {
                        logFirebaseEvent('ListContainer_update_app_state');
                        FFAppState().agir15 = true;
                        FFAppState().bagir15 = true;
                        safeSetState(() {});
                      }
                      if (widget!.number == '16') {
                        logFirebaseEvent('ListContainer_update_app_state');
                        FFAppState().agir16 = true;
                        FFAppState().bagir16 = true;
                        safeSetState(() {});
                      }
                      if (widget!.number == '17') {
                        logFirebaseEvent('ListContainer_update_app_state');
                        FFAppState().agir17 = true;
                        FFAppState().bagir17 = true;
                        safeSetState(() {});
                      }
                      if (widget!.number == '18') {
                        logFirebaseEvent('ListContainer_update_app_state');
                        FFAppState().agir18 = true;
                        FFAppState().bagir18 = true;
                        safeSetState(() {});
                      }
                      if (widget!.number == '19') {
                        logFirebaseEvent('ListContainer_update_app_state');
                        FFAppState().agir19 = true;
                        FFAppState().bagir19 = true;
                        safeSetState(() {});
                      }
                      if (widget!.number == '20') {
                        logFirebaseEvent('ListContainer_update_app_state');
                        FFAppState().agir20 = true;
                        FFAppState().bagir20 = true;
                        safeSetState(() {});
                      }
                      logFirebaseEvent('ListContainer_update_app_state');
                      FFAppState().agirBlocker = true;
                      FFAppState().update(() {});
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
                                  widget!.number!,
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
                                widget!.title!,
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
                          ].divide(SizedBox(width: 10.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              if (valueOrDefault<bool>(
                () {
                  if ((widget!.number == '1') &&
                      FFAppState().bagir1 &&
                      FFAppState().agirBlocker) {
                    return true;
                  } else if ((widget!.number == '2') &&
                      FFAppState().bagir2 &&
                      FFAppState().agirBlocker) {
                    return true;
                  } else if ((widget!.number == '3') &&
                      FFAppState().bagir3 &&
                      FFAppState().agirBlocker) {
                    return true;
                  } else if ((widget!.number == '4') &&
                      FFAppState().bagir4 &&
                      FFAppState().agirBlocker) {
                    return true;
                  } else if ((widget!.number == '5') &&
                      FFAppState().bagir5 &&
                      FFAppState().agirBlocker) {
                    return true;
                  } else if ((widget!.number == '6') &&
                      FFAppState().bagir6 &&
                      FFAppState().agirBlocker) {
                    return true;
                  } else if ((widget!.number == '7') &&
                      FFAppState().bagir7 &&
                      FFAppState().agirBlocker) {
                    return true;
                  } else if ((widget!.number == '8') &&
                      FFAppState().bagir8 &&
                      FFAppState().agirBlocker) {
                    return true;
                  } else if ((widget!.number == '9') &&
                      FFAppState().bagir9 &&
                      FFAppState().agirBlocker) {
                    return true;
                  } else if ((widget!.number == '10') &&
                      FFAppState().bagir10 &&
                      FFAppState().agirBlocker) {
                    return true;
                  } else if ((widget!.number == '11') &&
                      FFAppState().bagir11 &&
                      FFAppState().agirBlocker) {
                    return true;
                  } else if ((widget!.number == '12') &&
                      FFAppState().bagir12 &&
                      FFAppState().agirBlocker) {
                    return true;
                  } else if ((widget!.number == '13') &&
                      FFAppState().bagir13 &&
                      FFAppState().agirBlocker) {
                    return true;
                  } else if ((widget!.number == '14') &&
                      FFAppState().bagir14 &&
                      FFAppState().agirBlocker) {
                    return true;
                  } else if ((widget!.number == '15') &&
                      FFAppState().bagir15 &&
                      FFAppState().agirBlocker) {
                    return true;
                  } else if ((widget!.number == '16') &&
                      FFAppState().bagir16 &&
                      FFAppState().agirBlocker) {
                    return true;
                  } else if ((widget!.number == '17') &&
                      FFAppState().bagir17 &&
                      FFAppState().agirBlocker) {
                    return true;
                  } else if ((widget!.number == '18') &&
                      FFAppState().bagir18 &&
                      FFAppState().agirBlocker) {
                    return true;
                  } else if ((widget!.number == '19') &&
                      FFAppState().bagir19 &&
                      FFAppState().agirBlocker) {
                    return true;
                  } else if ((widget!.number == '20') &&
                      FFAppState().bagir20 &&
                      FFAppState().agirBlocker) {
                    return true;
                  } else {
                    return false;
                  }
                }(),
                false,
              ))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(33.0, 0.0, 33.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
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
                                    widget!.image!,
                                    width: double.infinity,
                                    height: FFAppState().heightAgir.toDouble(),
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
                                    widget!.insideTitle,
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
                                      data: valueOrDefault<String>(
                                        widget!.insideText,
                                        '---',
                                      ),
                                      selectable: true,
                                      onTapLink: (_, url, __) =>
                                          launchURL(url!),
                                    ).animateOnPageLoad(animationsMap[
                                        'markdownOnPageLoadAnimation']!),
                                  ),
                                ),
                                if (widget!.medi ?? true)
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: FlutterFlowVideoPlayer(
                                      path: widget!.media!,
                                      videoType: VideoType.network,
                                      height: FFAppState()
                                          .heightAgirVideo
                                          .toDouble(),
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
                                    'AGIR_FICHE_COMP_RETOUR_BTN_ON_TAP');
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed(
                                  'APP-SCREEN',
                                  queryParameters: {
                                    'keyComponents': serializeParam(
                                      0,
                                      ParamType.int,
                                    ),
                                    'sequence': serializeParam(
                                      widget!.sequenceid,
                                      ParamType.int,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              text: 'Retour',
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
