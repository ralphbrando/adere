import '/adere_prod/composants/media/image/image_widget.dart';
import '/adere_prod/composants/media/video/video_widget.dart';
import '/adere_prod/composants/resultat/jauge_negative/jauge_negative_widget.dart';
import '/adere_prod/composants/resultat/jauge_positive/jauge_positive_widget.dart';
import '/adere_prod/composants/simulateur/simulator_replay/simulator_replay_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'programme_slider_widget.dart' show ProgrammeSliderWidget;
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProgrammeSliderModel extends FlutterFlowModel<ProgrammeSliderWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Slider_PageView widget.
  PageController? sliderPageViewController;

  int get sliderPageViewCurrentIndex => sliderPageViewController != null &&
          sliderPageViewController!.hasClients &&
          sliderPageViewController!.page != null
      ? sliderPageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
