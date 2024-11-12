import '/adere_prod/composants/agir/agir_copy/agir_copy_widget.dart';
import '/adere_prod/composants/agir/agir_fiche/agir_fiche_widget.dart';
import '/adere_prod/composants/agir/agir_header/agir_header_widget.dart';
import '/adere_prod/composants/dialog/transition_pause/transition_pause_widget.dart';
import '/adere_prod/composants/dialog/transition_resultats/transition_resultats_widget.dart';
import '/adere_prod/composants/etape/step_header/step_header_widget.dart';
import '/adere_prod/composants/field/choice_chips/choice_chips_widget.dart';
import '/adere_prod/composants/field/date/date_widget.dart';
import '/adere_prod/composants/field/drop_down/drop_down_widget.dart';
import '/adere_prod/composants/field/radio/radio_widget.dart';
import '/adere_prod/composants/field/radio_multiple/radio_multiple_widget.dart';
import '/adere_prod/composants/field/range/range_widget.dart';
import '/adere_prod/composants/field/text_field/text_field_widget.dart';
import '/adere_prod/composants/media/gif/gif_widget.dart';
import '/adere_prod/composants/media/image/image_widget.dart';
import '/adere_prod/composants/media/video/video_widget.dart';
import '/adere_prod/composants/navigation/adere_dashboard_header/adere_dashboard_header_widget.dart';
import '/adere_prod/composants/navigation/adere_dashboard_navigation_bottom/adere_dashboard_navigation_bottom_widget.dart';
import '/adere_prod/composants/phase/phase_end/phase_end_widget.dart';
import '/adere_prod/composants/phase/phase_explain/phase_explain_widget.dart';
import '/adere_prod/composants/phase/phase_intro/phase_intro_widget.dart';
import '/adere_prod/composants/phase/phase_next/phase_next_widget.dart';
import '/adere_prod/composants/programme/programme_end/programme_end_widget.dart';
import '/adere_prod/composants/programme/programme_header/programme_header_widget.dart';
import '/adere_prod/composants/programme/programme_replay/programme_replay_widget.dart';
import '/adere_prod/composants/programme/programme_slider/programme_slider_widget.dart';
import '/adere_prod/composants/programme/programme_switch/programme_switch_widget.dart';
import '/adere_prod/composants/questionnaire/question_label/question_label_widget.dart';
import '/adere_prod/composants/resultat/jauge_negative/jauge_negative_widget.dart';
import '/adere_prod/composants/resultat/jauge_positive/jauge_positive_widget.dart';
import '/adere_prod/composants/resultat/resultat_infobulle/resultat_infobulle_widget.dart';
import '/adere_prod/composants/resultat/resultat_presentation/resultat_presentation_widget.dart';
import '/adere_prod/composants/simulateur/simulator_replay/simulator_replay_widget.dart';
import '/adere_prod/composants/texte/markdown_comp/markdown_comp_widget.dart';
import '/adere_prod/composants/texte/texte_court/texte_court_widget.dart';
import '/adere_prod/composants/texte/texte_long/texte_long_widget.dart';
import '/adere_prod/composants/texte/title/title_widget.dart';
import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'app_screen_widget.dart' show AppScreenWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class AppScreenModel extends FlutterFlowModel<AppScreenWidget> {
  ///  Local state fields for this page.

  bool isAgirContentOpen = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GET /interaction)] action in APP-SCREEN widget.
  ApiCallResponse? apiResultlgb;
  // Model for ADERE_DASHBOARD_HEADER component.
  late AdereDashboardHeaderModel adereDashboardHeaderModel;
  // Models for Programme_Header dynamic component.
  late FlutterFlowDynamicModels<ProgrammeHeaderModel> programmeHeaderModels;
  // Models for Step_Header dynamic component.
  late FlutterFlowDynamicModels<StepHeaderModel> stepHeaderModels;
  // Models for programmeReplay.
  late FlutterFlowDynamicModels<ProgrammeReplayModel> programmeReplayModels;
  // Models for Simulator_Replay dynamic component.
  late FlutterFlowDynamicModels<SimulatorReplayModel> simulatorReplayModels;
  // Models for TextField dynamic component.
  late FlutterFlowDynamicModels<TextFieldModel> textFieldModels;
  // Models for Date dynamic component.
  late FlutterFlowDynamicModels<DateModel> dateModels;
  // Models for ChoiceChips dynamic component.
  late FlutterFlowDynamicModels<ChoiceChipsModel> choiceChipsModels;
  // Models for Radio dynamic component.
  late FlutterFlowDynamicModels<RadioModel> radioModels;
  // Models for RadioMultiple dynamic component.
  late FlutterFlowDynamicModels<RadioMultipleModel> radioMultipleModels;
  // Models for Range dynamic component.
  late FlutterFlowDynamicModels<RangeModel> rangeModels;
  // Stores action output result for [Backend Call - API (POST Flowreset)] action in Button_Container widget.
  ApiCallResponse? apiResultzu5Copy;
  // Model for ADERE_DASHBOARD_NAVIGATION_BOTTOM component.
  late AdereDashboardNavigationBottomModel adereDashboardNavigationBottomModel;

  @override
  void initState(BuildContext context) {
    adereDashboardHeaderModel =
        createModel(context, () => AdereDashboardHeaderModel());
    programmeHeaderModels =
        FlutterFlowDynamicModels(() => ProgrammeHeaderModel());
    stepHeaderModels = FlutterFlowDynamicModels(() => StepHeaderModel());
    programmeReplayModels =
        FlutterFlowDynamicModels(() => ProgrammeReplayModel());
    simulatorReplayModels =
        FlutterFlowDynamicModels(() => SimulatorReplayModel());
    textFieldModels = FlutterFlowDynamicModels(() => TextFieldModel());
    dateModels = FlutterFlowDynamicModels(() => DateModel());
    choiceChipsModels = FlutterFlowDynamicModels(() => ChoiceChipsModel());
    radioModels = FlutterFlowDynamicModels(() => RadioModel());
    radioMultipleModels = FlutterFlowDynamicModels(() => RadioMultipleModel());
    rangeModels = FlutterFlowDynamicModels(() => RangeModel());
    adereDashboardNavigationBottomModel =
        createModel(context, () => AdereDashboardNavigationBottomModel());
  }

  @override
  void dispose() {
    adereDashboardHeaderModel.dispose();
    programmeHeaderModels.dispose();
    stepHeaderModels.dispose();
    programmeReplayModels.dispose();
    simulatorReplayModels.dispose();
    textFieldModels.dispose();
    dateModels.dispose();
    choiceChipsModels.dispose();
    radioModels.dispose();
    radioMultipleModels.dispose();
    rangeModels.dispose();
    adereDashboardNavigationBottomModel.dispose();
  }
}
