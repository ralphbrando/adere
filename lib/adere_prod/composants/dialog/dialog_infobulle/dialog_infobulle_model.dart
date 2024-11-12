import '/adere_prod/composants/media/image/image_widget.dart';
import '/adere_prod/composants/media/video/video_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dialog_infobulle_widget.dart' show DialogInfobulleWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class DialogInfobulleModel extends FlutterFlowModel<DialogInfobulleWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Image component.
  late ImageModel imageModel1;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {
    imageModel1 = createModel(context, () => ImageModel());
  }

  @override
  void dispose() {
    imageModel1.dispose();
  }
}
