import '/adere_prod/composants/media/image/image_widget.dart';
import '/adere_prod/composants/media/video/video_widget.dart';
import '/adere_prod/composants/resultat/jauge_negative/jauge_negative_widget.dart';
import '/adere_prod/composants/resultat/jauge_positive/jauge_positive_widget.dart';
import '/adere_prod/composants/simulateur/simulator_replay/simulator_replay_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'programme_slider_model.dart';
export 'programme_slider_model.dart';

class ProgrammeSliderWidget extends StatefulWidget {
  const ProgrammeSliderWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    required this.sequence,
    required this.isProgramme,
  });

  final dynamic parameter1;
  final dynamic parameter2;
  final int? sequence;
  final bool? isProgramme;

  @override
  State<ProgrammeSliderWidget> createState() => _ProgrammeSliderWidgetState();
}

class _ProgrammeSliderWidgetState extends State<ProgrammeSliderWidget> {
  late ProgrammeSliderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProgrammeSliderModel());

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
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Builder(
            builder: (context) {
              final sliders = widget!.parameter1?.toList() ?? [];

              return Container(
                width: double.infinity,
                height: 470.0,
                child: Stack(
                  children: [
                    PageView.builder(
                      controller: _model.sliderPageViewController ??=
                          PageController(
                              initialPage: max(0, min(0, sliders.length - 1))),
                      scrollDirection: Axis.horizontal,
                      itemCount: sliders.length,
                      itemBuilder: (context, slidersIndex) {
                        final slidersItem = sliders[slidersIndex];
                        return Container(
                          width: double.infinity,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(),
                                child: Text(
                                  getJsonField(
                                    slidersItem,
                                    r'''$.attributes.slider_slider_title''',
                                  ).toString(),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .eerieBlack,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (getJsonField(
                                          slidersItem,
                                          r'''$.attributes.isJauge''',
                                        ) &&
                                        widget!.isProgramme!)
                                      JaugePositiveWidget(
                                        key: Key(
                                            'Key8ug_${slidersIndex}_of_${sliders.length}'),
                                        value: getJsonField(
                                          slidersItem,
                                          r'''$.attributes.jauge_result''',
                                        ),
                                        valueDisplay: getJsonField(
                                          slidersItem,
                                          r'''$.attributes.jauge_label''',
                                        ).toString(),
                                        isProgramme: FFAppState().isProgramme,
                                      ),
                                    if (getJsonField(
                                          slidersItem,
                                          r'''$.attributes.isJauge''',
                                        ) &&
                                        !widget!.isProgramme!)
                                      JaugeNegativeWidget(
                                        key: Key(
                                            'Keyhpf_${slidersIndex}_of_${sliders.length}'),
                                        value: getJsonField(
                                          slidersItem,
                                          r'''$.attributes.jauge_result''',
                                        ),
                                        valueDisplay: getJsonField(
                                          slidersItem,
                                          r'''$.attributes.jauge_label''',
                                        ).toString(),
                                        isProgramme: widget!.isProgramme!,
                                      ),
                                    MarkdownBody(
                                      data: getJsonField(
                                        slidersItem,
                                        r'''$.attributes.slider_slider_body''',
                                      ).toString(),
                                      selectable: true,
                                      onTapLink: (_, url, __) =>
                                          launchURL(url!),
                                    ),
                                    if (getJsonField(
                                      slidersItem,
                                      r'''$.attributes.isImage''',
                                    ))
                                      ImageWidget(
                                        key: Key(
                                            'Keyrwm_${slidersIndex}_of_${sliders.length}'),
                                        imagepath: getJsonField(
                                          slidersItem,
                                          r'''$.attributes.slider_slider_image''',
                                        ).toString(),
                                      ),
                                    if (getJsonField(
                                      slidersItem,
                                      r'''$.attributes.isVideo''',
                                    ))
                                      VideoWidget(
                                        key: Key(
                                            'Key4ts_${slidersIndex}_of_${sliders.length}'),
                                        value: getJsonField(
                                          slidersItem,
                                          r'''$.attributes.slider_slider_video''',
                                        ).toString(),
                                        parameter1: getJsonField(
                                          slidersItem,
                                          r'''$.attributes.slider_slider_video''',
                                        ),
                                      ),
                                    if (false)
                                      Expanded(
                                        child: SimulatorReplayWidget(
                                          key: Key(
                                              'Keyzqi_${slidersIndex}_of_${sliders.length}'),
                                          sequenceId: widget!.sequence!,
                                        ),
                                      ),
                                  ]
                                      .divide(SizedBox(height: 20.0))
                                      .addToStart(SizedBox(height: 20.0))
                                      .addToEnd(SizedBox(height: 20.0)),
                                ),
                              ),
                            ].divide(SizedBox(height: 20.0)),
                          ),
                        );
                      },
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.95),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: smooth_page_indicator.SmoothPageIndicator(
                          controller: _model.sliderPageViewController ??=
                              PageController(
                                  initialPage:
                                      max(0, min(0, sliders.length - 1))),
                          count: sliders.length,
                          axisDirection: Axis.horizontal,
                          onDotClicked: (i) async {
                            await _model.sliderPageViewController!
                                .animateToPage(
                              i,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                            safeSetState(() {});
                          },
                          effect: smooth_page_indicator.SlideEffect(
                            spacing: 8.0,
                            radius: 16.0,
                            dotWidth: 12.0,
                            dotHeight: 12.0,
                            dotColor: FlutterFlowTheme.of(context).ashGray,
                            activeDotColor:
                                FlutterFlowTheme.of(context).lightSkyBlue,
                            paintStyle: PaintingStyle.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
