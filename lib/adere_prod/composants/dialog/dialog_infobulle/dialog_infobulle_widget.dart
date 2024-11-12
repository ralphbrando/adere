import '/adere_prod/composants/media/image/image_widget.dart';
import '/adere_prod/composants/media/video/video_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'dialog_infobulle_model.dart';
export 'dialog_infobulle_model.dart';

class DialogInfobulleWidget extends StatefulWidget {
  const DialogInfobulleWidget({
    super.key,
    this.value,
    this.title,
    String? subtitle,
    this.body,
    bool? progressbar,
    required this.isSlider,
    this.sliderTitle,
    this.sliderSubtitle,
    this.sliderBody,
    this.image,
    this.sliderImage,
    this.result,
    required this.sliderJson,
  })  : this.subtitle = subtitle ?? '-',
        this.progressbar = progressbar ?? false;

  final double? value;
  final String? title;
  final String subtitle;
  final String? body;
  final bool progressbar;
  final bool? isSlider;
  final String? sliderTitle;
  final String? sliderSubtitle;
  final String? sliderBody;
  final String? image;
  final String? sliderImage;
  final String? result;
  final dynamic sliderJson;

  @override
  State<DialogInfobulleWidget> createState() => _DialogInfobulleWidgetState();
}

class _DialogInfobulleWidgetState extends State<DialogInfobulleWidget> {
  late DialogInfobulleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DialogInfobulleModel());

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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primary,
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
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
                                    'DIALOG_INFOBULLE_close_rounded_ICN_ON_TA');
                                logFirebaseEvent(
                                    'IconButton_close_dialog_drawer_etc');
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    if (!widget!.isSlider!)
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      height: 50.0,
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 0.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 3.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .jett,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40.0, 0.0, 40.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 40.0,
                                              decoration: BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: 40.0,
                                                    constraints: BoxConstraints(
                                                      maxHeight:
                                                          double.infinity,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .columbiaBlue,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .jett,
                                                        width: 2.0,
                                                      ),
                                                    ),
                                                    child: Stack(
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Expanded(
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      widget!
                                                                          .title,
                                                                      'Text',
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).eerieBlack,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          lineHeight:
                                                                              1.2,
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
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: Visibility(
                                      visible: widget!.progressbar,
                                      child: CircularPercentIndicator(
                                        percent: widget!.value!,
                                        radius: 70.0,
                                        lineWidth: 16.0,
                                        animation: true,
                                        animateFromLastPercent: true,
                                        progressColor: () {
                                          if (widget!.value! <= 0.3) {
                                            return FlutterFlowTheme.of(context)
                                                .error;
                                          } else if (widget!.value! <= 0.6) {
                                            return FlutterFlowTheme.of(context)
                                                .naplesYellow;
                                          } else {
                                            return FlutterFlowTheme.of(context)
                                                .cambridgeBlue;
                                          }
                                        }(),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .isabelline,
                                        center: Text(
                                          '${widget!.result}',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .eerieBlack,
                                                fontSize: 32.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w800,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                if (widget!.progressbar &&
                                    (widget!.image != 'toto'))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.5,
                                      decoration: BoxDecoration(),
                                      child: wrapWithModel(
                                        model: _model.imageModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ImageWidget(
                                          imagepath: valueOrDefault<String>(
                                            widget!.image,
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcWxGCxO8sFhuvkkV2Ig74F3ELTqvlIDuE5A&usqp=CAU',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40.0, 0.0, 40.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (!widget!.progressbar &&
                                                (widget!.image == null ||
                                                    widget!.image == '') &&
                                                (widget!.subtitle != null &&
                                                    widget!.subtitle != ''))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 25.0, 0.0, 25.0),
                                                child: Text(
                                                  widget!.subtitle,
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                        lineHeight: 1.2,
                                                      ),
                                                ),
                                              ),
                                          ],
                                        ),
                                        MarkdownBody(
                                          data: widget!.body!,
                                          selectable: true,
                                          onTapLink: (_, url, __) =>
                                              launchURL(url!),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ]
                                  .divide(SizedBox(height: 20.0))
                                  .addToStart(SizedBox(height: 20.0))
                                  .addToEnd(SizedBox(height: 20.0)),
                            ),
                          ),
                        ],
                      ),
                    if (widget!.isSlider ?? true)
                      Builder(
                        builder: (context) {
                          final sliders = widget!.sliderJson!.toList();

                          return Container(
                            width: double.infinity,
                            height: 700.0,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 40.0),
                                  child: PageView.builder(
                                    controller: _model.pageViewController ??=
                                        PageController(
                                            initialPage: max(
                                                0, min(0, sliders.length - 1))),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: sliders.length,
                                    itemBuilder: (context, slidersIndex) {
                                      final slidersItem = sliders[slidersIndex];
                                      return SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Container(
                                                        height: 50.0,
                                                        child: Stack(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      1.0, 0.0),
                                                              child: Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    1.0,
                                                                height: 3.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .jett,
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          40.0,
                                                                          0.0,
                                                                          40.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 40.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Container(
                                                                      width: double
                                                                          .infinity,
                                                                      height:
                                                                          40.0,
                                                                      constraints:
                                                                          BoxConstraints(
                                                                        maxHeight:
                                                                            double.infinity,
                                                                      ),
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .platinum,
                                                                        borderRadius:
                                                                            BorderRadius.circular(40.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).jett,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Stack(
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Align(
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                    child: Text(
                                                                                      getJsonField(
                                                                                        slidersItem,
                                                                                        r'''$.attributes.infobulle_slider_title''',
                                                                                      ).toString(),
                                                                                      textAlign: TextAlign.center,
                                                                                      style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                            fontFamily: 'Inter',
                                                                                            color: FlutterFlowTheme.of(context).eerieBlack,
                                                                                            fontSize: 16.0,
                                                                                            letterSpacing: 0.0,
                                                                                            lineHeight: 1.2,
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
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Visibility(
                                                        visible: false,
                                                        child:
                                                            CircularPercentIndicator(
                                                          percent:
                                                              widget!.value!,
                                                          radius: 70.0,
                                                          lineWidth: 16.0,
                                                          animation: true,
                                                          animateFromLastPercent:
                                                              true,
                                                          progressColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .lightSkyBlue,
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .isabelline,
                                                          center: Text(
                                                            '${widget!.result}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .eerieBlack,
                                                                  fontSize:
                                                                      32.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  if (getJsonField(
                                                        slidersItem,
                                                        r'''$.attributes.infobulle_video''',
                                                      ) !=
                                                      null)
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.5,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: VideoWidget(
                                                          key: Key(
                                                              'Key2qx_${slidersIndex}_of_${sliders.length}'),
                                                          value: getJsonField(
                                                            slidersItem,
                                                            r'''$.attributes.infobulle_video''',
                                                          ).toString(),
                                                        ),
                                                      ),
                                                    ),
                                                  if (!widget!.progressbar &&
                                                      (getJsonField(
                                                            slidersItem,
                                                            r'''$.attributes.infobulle_slider_image''',
                                                          ) !=
                                                          null))
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.5,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: ImageWidget(
                                                          key: Key(
                                                              'Keyoma_${slidersIndex}_of_${sliders.length}'),
                                                          imagepath:
                                                              getJsonField(
                                                            slidersItem,
                                                            r'''$.attributes.infobulle_slider_image''',
                                                          ).toString(),
                                                        ),
                                                      ),
                                                    ),
                                                  Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (valueOrDefault<
                                                                    bool>(
                                                                  widget!
                                                                      .progressbar,
                                                                  true,
                                                                ) &&
                                                                (widget!.image ==
                                                                        null ||
                                                                    widget!.image ==
                                                                        '') &&
                                                                (widget!.subtitle !=
                                                                        null &&
                                                                    widget!.subtitle !=
                                                                        ''))
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        0.0,
                                                                        20.0,
                                                                        0.0),
                                                                child: Text(
                                                                  getJsonField(
                                                                    slidersItem,
                                                                    r'''$.attributes.infobulle_slider_subtitle''',
                                                                  ).toString(),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .eerieBlack,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      50.0,
                                                                      25.0,
                                                                      50.0,
                                                                      0.0),
                                                          child: MarkdownBody(
                                                            data: getJsonField(
                                                              slidersItem,
                                                              r'''$.attributes.infobulle_slider_body''',
                                                            ).toString(),
                                                            selectable: true,
                                                            onTapLink: (_, url,
                                                                    __) =>
                                                                launchURL(url!),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ]
                                                    .divide(
                                                        SizedBox(height: 20.0))
                                                    .addToStart(
                                                        SizedBox(height: 20.0))
                                                    .addToEnd(
                                                        SizedBox(height: 20.0)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 16.0),
                                    child: smooth_page_indicator
                                        .SmoothPageIndicator(
                                      controller: _model.pageViewController ??=
                                          PageController(
                                              initialPage: max(0,
                                                  min(0, sliders.length - 1))),
                                      count: sliders.length,
                                      axisDirection: Axis.horizontal,
                                      onDotClicked: (i) async {
                                        await _model.pageViewController!
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
                                        dotColor: FlutterFlowTheme.of(context)
                                            .ashGray,
                                        activeDotColor:
                                            FlutterFlowTheme.of(context)
                                                .lightSkyBlue,
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
              ),
            ),
          ),
        ),
      ],
    );
  }
}
