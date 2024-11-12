import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'phase_intro_widget.dart' show PhaseIntroWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PhaseIntroModel extends FlutterFlowModel<PhaseIntroWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PhaseIntro_PageView widget.
  PageController? phaseIntroPageViewController;

  int get phaseIntroPageViewCurrentIndex =>
      phaseIntroPageViewController != null &&
              phaseIntroPageViewController!.hasClients &&
              phaseIntroPageViewController!.page != null
          ? phaseIntroPageViewController!.page!.round()
          : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
