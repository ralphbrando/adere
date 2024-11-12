import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'phase_explain_model.dart';
export 'phase_explain_model.dart';

class PhaseExplainWidget extends StatefulWidget {
  const PhaseExplainWidget({
    super.key,
    this.image,
    required this.sliders,
  });

  final String? image;
  final dynamic sliders;

  @override
  State<PhaseExplainWidget> createState() => _PhaseExplainWidgetState();
}

class _PhaseExplainWidgetState extends State<PhaseExplainWidget> {
  late PhaseExplainModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PhaseExplainModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(),
            child: Stack(
              alignment: AlignmentDirectional(0.0, 1.0),
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).platinum,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 20.0),
                              child: Builder(
                                builder: (context) {
                                  final slider = widget!.sliders!.toList();

                                  return Container(
                                    width: double.infinity,
                                    height: 120.0,
                                    child: CarouselSlider.builder(
                                      itemCount: slider.length,
                                      itemBuilder: (context, sliderIndex, _) {
                                        final sliderItem = slider[sliderIndex];
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              getJsonField(
                                                sliderItem,
                                                r'''$.attributes.title''',
                                              ).toString(),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .eerieBlack,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            Text(
                                              getJsonField(
                                                sliderItem,
                                                r'''$.attributes.body''',
                                              ).toString(),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .eerieBlack,
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ].divide(SizedBox(height: 20.0)),
                                        );
                                      },
                                      carouselController:
                                          _model.carouselController ??=
                                              CarouselSliderController(),
                                      options: CarouselOptions(
                                        initialPage:
                                            max(0, min(1, slider.length - 1)),
                                        viewportFraction: 1.0,
                                        disableCenter: true,
                                        enlargeCenterPage: false,
                                        enlargeFactor: 0.0,
                                        enableInfiniteScroll: false,
                                        scrollDirection: Axis.horizontal,
                                        autoPlay: false,
                                        onPageChanged: (index, _) =>
                                            _model.carouselCurrentIndex = index,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'PHASE_EXPLAIN_COMP_Icon_Container_ON_TAP');
                          logFirebaseEvent('Icon_Container_carousel');
                          await _model.carouselController?.previousPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        },
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).jett,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            FFIcons.karrowLeftRounded2,
                            color: Colors.white,
                            size: 16.0,
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'PHASE_EXPLAIN_COMP_Icon_Container_ON_TAP');
                          logFirebaseEvent('Icon_Container_carousel');
                          await _model.carouselController?.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        },
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).jett,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            FFIcons.karrowRightRounded2,
                            color: Colors.white,
                            size: 16.0,
                          ),
                        ),
                      ),
                    ].divide(SizedBox(width: 20.0)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
