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
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'app_screen_model.dart';
export 'app_screen_model.dart';

class AppScreenWidget extends StatefulWidget {
  const AppScreenWidget({
    super.key,
    int? keyComponents,
    required this.sequence,
    this.phase,
  }) : this.keyComponents = keyComponents ?? 0;

  final int keyComponents;
  final int? sequence;
  final int? phase;

  @override
  State<AppScreenWidget> createState() => _AppScreenWidgetState();
}

class _AppScreenWidgetState extends State<AppScreenWidget> {
  late AppScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppScreenModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'APP-SCREEN'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('APP_SCREEN_PAGE_APP-SCREEN_ON_INIT_STATE');
      logFirebaseEvent('APP-SCREEN_action_block');
      await action_blocks.navBarStatus(
        context,
        toChange: 'Off',
      );
      logFirebaseEvent('APP-SCREEN_update_app_state');
      FFAppState().isQuestionLabel = ' ';
      FFAppState().heightContainerAppScreen = 100;
      safeSetState(() {});
      logFirebaseEvent('APP-SCREEN_backend_call');
      _model.apiResultlgb = await ApiAdereGroup.gETInteractionCall.call(
        deviceId: FFAppState().deviceId,
        id: widget!.sequence?.toString(),
        mode: 'transition2',
        phase: widget!.phase?.toString(),
      );

      if ((_model.apiResultlgb?.succeeded ?? true)) {
        if (getJsonField(
          (_model.apiResultlgb?.jsonBody ?? ''),
          r'''$.home''',
        )) {
          logFirebaseEvent('APP-SCREEN_navigate_to');

          context.pushNamed('ADERE_DASHBOARD');
        } else if (getJsonField(
          (_model.apiResultlgb?.jsonBody ?? ''),
          r'''$.isTransition''',
        )) {
          logFirebaseEvent('APP-SCREEN_alert_dialog');
          await showDialog(
            barrierDismissible: false,
            context: context,
            builder: (dialogContext) {
              return Dialog(
                elevation: 0,
                insetPadding: EdgeInsets.zero,
                backgroundColor: Colors.transparent,
                alignment: AlignmentDirectional(0.0, 0.0)
                    .resolve(Directionality.of(context)),
                child: GestureDetector(
                  onTap: () => FocusScope.of(dialogContext).unfocus(),
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    child: TransitionResultatsWidget(),
                  ),
                ),
              );
            },
          );
        } else if (getJsonField(
          (_model.apiResultlgb?.jsonBody ?? ''),
          r'''$.isPause''',
        )) {
          logFirebaseEvent('APP-SCREEN_alert_dialog');
          await showDialog(
            barrierDismissible: false,
            context: context,
            builder: (dialogContext) {
              return Dialog(
                elevation: 0,
                insetPadding: EdgeInsets.zero,
                backgroundColor: Colors.transparent,
                alignment: AlignmentDirectional(0.0, 0.0)
                    .resolve(Directionality.of(context)),
                child: GestureDetector(
                  onTap: () => FocusScope.of(dialogContext).unfocus(),
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    child: TransitionPauseWidget(),
                  ),
                ),
              );
            },
          );
        }

        if (getJsonField(
              (_model.apiResultlgb?.jsonBody ?? ''),
              r'''$.flow''',
            ) ==
            null) {
          logFirebaseEvent('APP-SCREEN_update_app_state');
          FFAppState().screenLast = 0;
          safeSetState(() {});
        }
        if (getJsonField(
          (_model.apiResultlgb?.jsonBody ?? ''),
          r'''$.redirect_or_not''',
        )) {
          logFirebaseEvent('APP-SCREEN_update_app_state');
          FFAppState().redirect = true;
          FFAppState().destination = getJsonField(
            (_model.apiResultlgb?.jsonBody ?? ''),
            r'''$.screen.redirect_destination''',
          );
          safeSetState(() {});
        } else {
          logFirebaseEvent('APP-SCREEN_update_app_state');
          FFAppState().redirect = false;
          safeSetState(() {});
        }

        if (getJsonField(
          (_model.apiResultlgb?.jsonBody ?? ''),
          r'''$.isQuestionWithImage''',
        )) {
          logFirebaseEvent('APP-SCREEN_update_app_state');
          FFAppState().mediaimagequestion = getJsonField(
            (_model.apiResultlgb?.jsonBody ?? ''),
            r'''$.question_image''',
          ).toString();
          safeSetState(() {});
        } else {
          logFirebaseEvent('APP-SCREEN_update_app_state');
          FFAppState().mediaimagequestion = '';
          safeSetState(() {});
        }
      } else {
        logFirebaseEvent('APP-SCREEN_alert_dialog');
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              content: Text((_model.apiResultlgb?.bodyText ?? '')),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
      }

      logFirebaseEvent('APP-SCREEN_update_app_state');
      FFAppState().containQuestion = getJsonField(
        (_model.apiResultlgb?.jsonBody ?? ''),
        r'''$.isQuestion''',
      );
      FFAppState().isTechnique = getJsonField(
        (_model.apiResultlgb?.jsonBody ?? ''),
        r'''$.isTechnique''',
      );
      FFAppState().withContinue = getJsonField(
        (_model.apiResultlgb?.jsonBody ?? ''),
        r'''$.withContinue''',
      );
      FFAppState().screenNow = getJsonField(
        (_model.apiResultlgb?.jsonBody ?? ''),
        r'''$.screen.id''',
      );
      FFAppState().sequenceName = getJsonField(
        (_model.apiResultlgb?.jsonBody ?? ''),
        r'''$.sequence_name''',
      ).toString().toString();
      FFAppState().stepCounter = getJsonField(
        (_model.apiResultlgb?.jsonBody ?? ''),
        r'''$.step_counter''',
      ).toString().toString();
      FFAppState().codecolor = getJsonField(
        (_model.apiResultlgb?.jsonBody ?? ''),
        r'''$.code_color''',
      ).toString().toString();
      FFAppState().codecolorlight = getJsonField(
        (_model.apiResultlgb?.jsonBody ?? ''),
        r'''$.code_color_light''',
      ).toString().toString();
      FFAppState().buttoncolor = getJsonField(
        (_model.apiResultlgb?.jsonBody ?? ''),
        r'''$.button_color''',
      ).toString().toString();
      FFAppState().buttoncolortext = getJsonField(
        (_model.apiResultlgb?.jsonBody ?? ''),
        r'''$.button_color_text''',
      ).toString().toString();
      FFAppState().bordercolor = getJsonField(
        (_model.apiResultlgb?.jsonBody ?? ''),
        r'''$.border_color''',
      ).toString().toString();
      FFAppState().colortext = getJsonField(
        (_model.apiResultlgb?.jsonBody ?? ''),
        r'''$.color_text''',
      ).toString().toString();
      FFAppState().stepCounterBool = getJsonField(
        (_model.apiResultlgb?.jsonBody ?? ''),
        r'''$.screen.step_counter''',
      );
      FFAppState().logo = getJsonField(
        (_model.apiResultlgb?.jsonBody ?? ''),
        r'''$.image_agir''',
      ).toString();
      FFAppState().agir1 = false;
      FFAppState().agir2 = false;
      FFAppState().agir3 = false;
      FFAppState().agir4 = false;
      FFAppState().agir5 = false;
      FFAppState().agir6 = false;
      FFAppState().agir7 = false;
      FFAppState().agir8 = false;
      FFAppState().agir9 = false;
      FFAppState().agir10 = false;
      FFAppState().agirBlocker = false;
      FFAppState().agirLast = 0;
      FFAppState().tempoHide = false;
      FFAppState().agir11 = false;
      FFAppState().agir12 = false;
      FFAppState().agir13 = false;
      FFAppState().agir14 = false;
      FFAppState().agir15 = false;
      FFAppState().agir16 = false;
      FFAppState().agir17 = false;
      FFAppState().agir18 = false;
      FFAppState().agir19 = false;
      FFAppState().agir20 = false;
      FFAppState().isProgramme = getJsonField(
        (_model.apiResultlgb?.jsonBody ?? ''),
        r'''$.isProgramme''',
      );
      FFAppState().birthdateLabel = 'Date';
      FFAppState().isQuestionLabel = getJsonField(
        (_model.apiResultlgb?.jsonBody ?? ''),
        r'''$.isQuestionLabel''',
      ).toString().toString();
      safeSetState(() {});
      if (getJsonField(
        (_model.apiResultlgb?.jsonBody ?? ''),
        r'''$.isAgirScreen''',
      )) {
        logFirebaseEvent('APP-SCREEN_update_app_state');
        FFAppState().agirBlockerSubmit = false;
        FFAppState().agirStatusList = functions
            .getAgirStatusList(ApiAdereGroup.gETInteractionCall
                .elements(
                  (_model.apiResultlgb?.jsonBody ?? ''),
                )!
                .toList())
            .toList()
            .cast<AgirStruct>();
        safeSetState(() {});
      } else {
        logFirebaseEvent('APP-SCREEN_update_app_state');
        FFAppState().agirBlockerSubmit = true;
        safeSetState(() {});
      }

      if (ApiAdereGroup.gETInteractionCall.isSpecial(
        (_model.apiResultlgb?.jsonBody ?? ''),
      )!) {
        if (ApiAdereGroup.gETInteractionCall.specialScreen(
              (_model.apiResultlgb?.jsonBody ?? ''),
            ) ==
            'e_screen') {
          logFirebaseEvent('APP-SCREEN_navigate_to');

          context.goNamed('ADERE_DASHBOARD');
        } else if (ApiAdereGroup.gETInteractionCall.specialScreen(
              (_model.apiResultlgb?.jsonBody ?? ''),
            ) ==
            'color_screen') {
          logFirebaseEvent('APP-SCREEN_navigate_to');

          context.goNamed('ADERE_DASHBOARD');
        } else if (ApiAdereGroup.gETInteractionCall.specialScreen(
              (_model.apiResultlgb?.jsonBody ?? ''),
            ) ==
            'reflexes_screen') {
          logFirebaseEvent('APP-SCREEN_navigate_to');

          context.goNamed('ADERE_DASHBOARD');
        } else if (ApiAdereGroup.gETInteractionCall.specialScreen(
              (_model.apiResultlgb?.jsonBody ?? ''),
            ) ==
            'reassurance_screen') {
        } else {
          return;
        }

        return;
      } else {
        return;
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Builder(
      builder: (context) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          key: scaffoldKey,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 40.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).isabelline,
                ),
              ),
              if (FFAppState().onboardLevel < 7)
                Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).isabelline,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              decoration: BoxDecoration(),
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    FFIcons.kadereLogotype,
                                    color: Colors.black,
                                    size: 22.0,
                                  ),
                                ].divide(SizedBox(width: 2.0)),
                              ),
                            ),
                          ].divide(SizedBox(width: 10.0)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              decoration: BoxDecoration(),
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'APP_SCREEN_PAGE_Text_nvsiys1d_ON_TAP');
                                  logFirebaseEvent('Text_auth');
                                  GoRouter.of(context).prepareAuthEvent();
                                  await authManager.signOut();
                                  GoRouter.of(context).clearRedirectLocation();

                                  context.goNamedAuth(
                                      'ADERE_INSCRIPTION', context.mounted);
                                },
                                child: Text(
                                  'DÉCONNEXION',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        decoration: TextDecoration.underline,
                                      ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 10.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              if (FFAppState().onboardLevel >= 7)
                Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).isabelline,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                  ),
                  child: wrapWithModel(
                    model: _model.adereDashboardHeaderModel,
                    updateCallback: () => safeSetState(() {}),
                    child: AdereDashboardHeaderWidget(),
                  ),
                ),
              if (FFAppState().isProgramme)
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).jett,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 15.0, 20.0, 14.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                FFAppState().sequenceName,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .white,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
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
                            if (FFAppState().stepCounterBool)
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).jett,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 15.0, 20.0, 14.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  FFAppState().stepCounter,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .white,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                          ].divide(SizedBox(width: 20.0)),
                        ),
                      ],
                    ),
                  ),
                ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: Builder(
                    builder: (context) {
                      final elements = ApiAdereGroup.gETInteractionCall
                              .elements(
                                (_model.apiResultlgb?.jsonBody ?? ''),
                              )
                              ?.toList() ??
                          [];

                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: elements.length,
                        itemBuilder: (context, elementsIndex) {
                          final elementsItem = elements[elementsIndex];
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isPhaseIntro''',
                                      ))
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .platinum,
                                          ),
                                          child: PhaseIntroWidget(
                                            key: Key(
                                                'Key3fm_${elementsIndex}_of_${elements.length}'),
                                            image: getJsonField(
                                              elementsItem,
                                              r'''$.attributes.image''',
                                            ).toString(),
                                            logo: getJsonField(
                                              elementsItem,
                                              r'''$.attributes.logo''',
                                            ).toString(),
                                            imageend: getJsonField(
                                              elementsItem,
                                              r'''$.attributes.image_end''',
                                            ).toString(),
                                            sliders: getJsonField(
                                              elementsItem,
                                              r'''$.attributes.sliders''',
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isSectionProgressbar''',
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                            ),
                                            child: Stack(
                                              children: [
                                                LinearPercentIndicator(
                                                  percent: getJsonField(
                                                    elementsItem,
                                                    r'''$.attributes.progress_value''',
                                                  ),
                                                  lineHeight: 6.0,
                                                  animation: true,
                                                  animateFromLastPercent: true,
                                                  progressColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .cambridgeBlue,
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .ashGray,
                                                  barRadius:
                                                      Radius.circular(6.0),
                                                  padding: EdgeInsets.zero,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isShortTextWithImage''',
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: QuestionLabelWidget(
                                              key: Key(
                                                  'Keydrr_${elementsIndex}_of_${elements.length}'),
                                              background: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.short_text_title_image''',
                                              ).toString(),
                                              title: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.short_text_title_text''',
                                              ).toString(),
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isQuestion''',
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: QuestionLabelWidget(
                                              key: Key(
                                                  'Key26w_${elementsIndex}_of_${elements.length}'),
                                              background: '0',
                                              title: getJsonField(
                                                elementsItem,
                                                r'''$.label''',
                                              ).toString(),
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isSequenceStep''',
                                      ))
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.programmeHeaderModels
                                                .getModel(
                                              widget!.keyComponents.toString(),
                                              elementsIndex,
                                            ),
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ProgrammeHeaderWidget(
                                              key: Key(
                                                'Keyszq_${widget!.keyComponents.toString()}',
                                              ),
                                              name: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.section_sequence_name''',
                                              ).toString(),
                                              icon: 'NA',
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isSectionStep''',
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2.0, 0.0, 0.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: wrapWithModel(
                                              model: _model.stepHeaderModels
                                                  .getModel(
                                                widget!.keyComponents
                                                    .toString(),
                                                elementsIndex,
                                              ),
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: StepHeaderWidget(
                                                key: Key(
                                                  'Keyh24_${widget!.keyComponents.toString()}',
                                                ),
                                                name: getJsonField(
                                                  elementsItem,
                                                  r'''$.attributes.section_step_name''',
                                                ).toString(),
                                                icon: getJsonField(
                                                  elementsItem,
                                                  r'''$.attributes.section_step_image_path''',
                                                ).toString(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isEndPhase''',
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: PhaseEndWidget(
                                              key: Key(
                                                  'Key007_${elementsIndex}_of_${elements.length}'),
                                              title: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.title''',
                                              ).toString(),
                                              subtitle: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.subtitle''',
                                              ).toString(),
                                              description: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.description''',
                                              ).toString(),
                                              destination: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.destination''',
                                              ).toString(),
                                              sequence: widget!.sequence,
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isEndProgramme''',
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: ProgrammeEndWidget(
                                              key: Key(
                                                  'Keydg7_${elementsIndex}_of_${elements.length}'),
                                              title: FFAppState().sequenceName,
                                              subtitle: '-',
                                              description: '-',
                                              destination: '-',
                                              sequence: 0,
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isSwitchBehavior''',
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: ProgrammeSwitchWidget(
                                              key: Key(
                                                  'Keyu1g_${elementsIndex}_of_${elements.length}'),
                                              title: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.title''',
                                              ).toString(),
                                              keycomponents:
                                                  widget!.keyComponents,
                                              sequence: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.sequence''',
                                              ),
                                              reset: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.reset''',
                                              ),
                                              currentequence: widget!.sequence,
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isProgrammeReplay''',
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: wrapWithModel(
                                              model: _model
                                                  .programmeReplayModels
                                                  .getModel(
                                                widget!.keyComponents
                                                    .toString(),
                                                elementsIndex,
                                              ),
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: ProgrammeReplayWidget(
                                                key: Key(
                                                  'Keyv1p_${widget!.keyComponents.toString()}',
                                                ),
                                                sequenceId: widget!.sequence!,
                                              ),
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isSimulatorReplay''',
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: wrapWithModel(
                                              model: _model
                                                  .simulatorReplayModels
                                                  .getModel(
                                                widget!.keyComponents
                                                    .toString(),
                                                elementsIndex,
                                              ),
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: SimulatorReplayWidget(
                                                key: Key(
                                                  'Keydjb_${widget!.keyComponents.toString()}',
                                                ),
                                                sequenceId: widget!.sequence!,
                                              ),
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isInfobulle''',
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: ResultatInfobulleWidget(
                                              key: Key(
                                                  'Keya4r_${elementsIndex}_of_${elements.length}'),
                                              valueDividedBy100: getJsonField(
                                                elementsItem,
                                                r'''$.resultDevided''',
                                              ),
                                              valueString: getJsonField(
                                                elementsItem,
                                                r'''$.result''',
                                              ).toString(),
                                              label: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.infobulle_label''',
                                              ).toString(),
                                              title: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.infobulle_title''',
                                              ).toString(),
                                              value: getJsonField(
                                                elementsItem,
                                                r'''$.result''',
                                              ),
                                              progressbar: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.progressbar''',
                                              ),
                                              isSlider: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.isSlider''',
                                              ),
                                              subtitle: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.infobulle_subtitle''',
                                              ).toString(),
                                              body: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.infobulle_body''',
                                              ).toString(),
                                              sliderTitle: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.infobulle_slider_title''',
                                              ).toString(),
                                              sliderSubtitle: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.infobulle_slider_subtitle''',
                                              ).toString(),
                                              sliderBody: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.infobulle_slider_body''',
                                              ).toString(),
                                              image: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.infobulle_image''',
                                              ).toString(),
                                              sliderImage: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.infobulle_slider_image''',
                                              ).toString(),
                                              sliderJson: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.sliders''',
                                              ),
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isMediaImage''',
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: ImageWidget(
                                              key: Key(
                                                  'Keyjtc_${elementsIndex}_of_${elements.length}'),
                                              imagepath: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.image''',
                                              ).toString(),
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isMediaImageGif''',
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: GifWidget(
                                              key: Key(
                                                  'Key9hz_${elementsIndex}_of_${elements.length}'),
                                              imagepath: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.image''',
                                              ).toString(),
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isMediaVideo''',
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: VideoWidget(
                                              key: Key(
                                                  'Keyjcb_${elementsIndex}_of_${elements.length}'),
                                              parameter1: getJsonField(
                                                elementsItem,
                                                r'''$.isQuestion''',
                                              ),
                                              value: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.url_media''',
                                              ).toString(),
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isJauge''',
                                      ))
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(),
                                          child: Visibility(
                                            visible: FFAppState().isProgramme,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 20.0, 0.0),
                                              child: JaugePositiveWidget(
                                                key: Key(
                                                    'Keyrea_${elementsIndex}_of_${elements.length}'),
                                                value: getJsonField(
                                                  elementsItem,
                                                  r'''$.resultDevided''',
                                                ),
                                                valueDisplay: getJsonField(
                                                  elementsItem,
                                                  r'''$.result''',
                                                ).toString(),
                                                isProgramme: getJsonField(
                                                  elementsItem,
                                                  r'''$.isProgramme''',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isJauge''',
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: Visibility(
                                              visible:
                                                  !FFAppState().isProgramme,
                                              child: JaugeNegativeWidget(
                                                key: Key(
                                                    'Keyfjp_${elementsIndex}_of_${elements.length}'),
                                                value: getJsonField(
                                                  elementsItem,
                                                  r'''$.resultDevided''',
                                                ),
                                                valueDisplay: getJsonField(
                                                  elementsItem,
                                                  r'''$.result''',
                                                ).toString(),
                                                isProgramme: getJsonField(
                                                  elementsItem,
                                                  r'''$.isProgramme''',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isJaugeSim''',
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: JaugePositiveWidget(
                                              key: Key(
                                                  'Keytay_${elementsIndex}_of_${elements.length}'),
                                              value: getJsonField(
                                                elementsItem,
                                                r'''$.resultDevided''',
                                              ),
                                              valueDisplay: getJsonField(
                                                elementsItem,
                                                r'''$.result''',
                                              ).toString(),
                                              isProgramme: getJsonField(
                                                elementsItem,
                                                r'''$.isProgramme''',
                                              ),
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isSlider''',
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: ProgrammeSliderWidget(
                                              key: Key(
                                                  'Keyph1_${elementsIndex}_of_${elements.length}'),
                                              parameter1: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.sliders''',
                                              ),
                                              parameter2: getJsonField(
                                                elementsItem,
                                                r'''$.isSlider''',
                                              ),
                                              sequence: widget!.sequence!,
                                              isProgramme:
                                                  FFAppState().isProgramme,
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isTitle''',
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: TitleWidget(
                                              key: Key(
                                                  'Keypvv_${elementsIndex}_of_${elements.length}'),
                                              value: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.text''',
                                              ).toString(),
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                            elementsItem,
                                            r'''$.isShortText''',
                                          ) &&
                                          !_model.isAgirContentOpen)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: TexteCourtWidget(
                                              key: Key(
                                                  'Key70v_${elementsIndex}_of_${elements.length}'),
                                              value: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.text''',
                                              ).toString(),
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isLongText''',
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: TexteLongWidget(
                                              key: Key(
                                                  'Key5rh_${elementsIndex}_of_${elements.length}'),
                                              value: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.text''',
                                              ).toString(),
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isMarkdownText''',
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: MarkdownCompWidget(
                                              key: Key(
                                                  'Key2w0_${elementsIndex}_of_${elements.length}'),
                                              value: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.text''',
                                              ).toString(),
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                            elementsItem,
                                            r'''$.isHeaderAgir''',
                                          ) &&
                                          (FFAppState().agirBlocker == false))
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(),
                                          child: AgirHeaderWidget(
                                            key: Key(
                                                'Key4ub_${elementsIndex}_of_${elements.length}'),
                                            title: getJsonField(
                                              elementsItem,
                                              r'''$.attributes.header_title''',
                                            ).toString(),
                                            image: getJsonField(
                                              elementsItem,
                                              r'''$.attributes.image''',
                                            ).toString(),
                                            sequence:
                                                widget!.sequence?.toString(),
                                            phase: widget!.phase,
                                            seq: widget!.sequence,
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isAgir''',
                                      ))
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(),
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            child: AgirCopyWidget(
                                              key: Key(
                                                  'Keydxa_${elementsIndex}_of_${elements.length}'),
                                              agirAttributes:
                                                  AgirAttributesStruct
                                                      .maybeFromMap(
                                                          getJsonField(
                                                elementsItem,
                                                r'''$.attributes''',
                                              ))!,
                                              isAgirContentOpen:
                                                  _model.isAgirContentOpen,
                                              toggleOpen: () async {
                                                logFirebaseEvent(
                                                    'APP_SCREEN_Container_dxag1ned_CALLBACK');
                                                logFirebaseEvent(
                                                    'agirCopy_update_page_state');
                                                _model.isAgirContentOpen =
                                                    !_model.isAgirContentOpen;
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isFiche''',
                                      ))
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: Container(
                                              decoration: BoxDecoration(),
                                              child: AgirFicheWidget(
                                                key: Key(
                                                    'Keyndd_${elementsIndex}_of_${elements.length}'),
                                                active: false,
                                                title: getJsonField(
                                                  elementsItem,
                                                  r'''$.attributes.title''',
                                                ).toString(),
                                                number: getJsonField(
                                                  elementsItem,
                                                  r'''$.attributes.number''',
                                                ).toString(),
                                                steptext:
                                                    FFAppState().stepCounter,
                                                image: getJsonField(
                                                  elementsItem,
                                                  r'''$.attributes.image''',
                                                ).toString(),
                                                logo: FFAppState().logo,
                                                last: FFAppState().agirLast,
                                                insideTitle: getJsonField(
                                                  elementsItem,
                                                  r'''$.attributes.inside_title''',
                                                ).toString(),
                                                insideText: getJsonField(
                                                  elementsItem,
                                                  r'''$.attributes.inside_text''',
                                                ).toString(),
                                                media: getJsonField(
                                                  elementsItem,
                                                  r'''$.attributes.media''',
                                                ).toString(),
                                                medi: getJsonField(
                                                  elementsItem,
                                                  r'''$.attributes.media_visible''',
                                                ),
                                                sliders: getJsonField(
                                                  elementsItem,
                                                  r'''$.attributes.sliders''',
                                                ),
                                                element: getJsonField(
                                                  (_model.apiResultlgb
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.screen.decoded_screen_agir''',
                                                ),
                                                sequenceid: widget!.sequence,
                                              ),
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isScorePresentation''',
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: ResultatPresentationWidget(
                                              key: Key(
                                                  'Keyse3_${elementsIndex}_of_${elements.length}'),
                                              image: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.image''',
                                              ).toString(),
                                              text1: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.text1''',
                                              ).toString(),
                                              text2: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.text2''',
                                              ).toString(),
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isPhaseExplain''',
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: PhaseExplainWidget(
                                              key: Key(
                                                  'Keyrnx_${elementsIndex}_of_${elements.length}'),
                                              image: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.image''',
                                              ).toString(),
                                              sliders: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.sliders''',
                                              ),
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                        elementsItem,
                                        r'''$.isNextPhase''',
                                      ))
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(),
                                          child: Container(
                                            height: 200.0,
                                            decoration: BoxDecoration(),
                                            child: PhaseNextWidget(
                                              key: Key(
                                                  'Keyebn_${elementsIndex}_of_${elements.length}'),
                                              image: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.image''',
                                              ).toString(),
                                              title: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.title''',
                                              ).toString(),
                                              body: getJsonField(
                                                elementsItem,
                                                r'''$.attributes.body''',
                                              ).toString(),
                                            ),
                                          ),
                                        ),
                                    ]
                                        .divide(SizedBox(height: 20.0))
                                        .addToEnd(SizedBox(height: 20.0)),
                                  ),
                                ),
                              ),
                              if ((FFAppState().containQuestion == true) &&
                                  (getJsonField(
                                        elementsItem,
                                        r'''$.isDropdown''',
                                      ) ||
                                      getJsonField(
                                        elementsItem,
                                        r'''$.isNumber''',
                                      ) ||
                                      getJsonField(
                                        elementsItem,
                                        r'''$.isDate''',
                                      ) ||
                                      getJsonField(
                                        elementsItem,
                                        r'''$.isChoicechips''',
                                      ) ||
                                      getJsonField(
                                        elementsItem,
                                        r'''$.isRadio''',
                                      ) ||
                                      getJsonField(
                                        elementsItem,
                                        r'''$.isRadioMultiple''',
                                      ) ||
                                      getJsonField(
                                        elementsItem,
                                        r'''$.isRange''',
                                      )))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).platinum,
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (getJsonField(
                                            elementsItem,
                                            r'''$.isDropdown''',
                                          ))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 20.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(0.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(0.0),
                                                  ),
                                                ),
                                                child: DropDownWidget(
                                                  key: Key(
                                                      'Keyaau_${elementsIndex}_of_${elements.length}'),
                                                  parameter1: getJsonField(
                                                    elementsItem,
                                                    r'''$.attributes.question.help''',
                                                  ),
                                                  parameter2: (getJsonField(
                                                    elementsItem,
                                                    r'''$.attributes.question.answers''',
                                                    true,
                                                  ) as List)
                                                      .map<String>(
                                                          (s) => s.toString())
                                                      .toList(),
                                                ),
                                              ),
                                            ),
                                          if (getJsonField(
                                            elementsItem,
                                            r'''$.isNumber''',
                                          ))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 20.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: wrapWithModel(
                                                  model: _model.textFieldModels
                                                      .getModel(
                                                    widget!.keyComponents
                                                        .toString(),
                                                    elementsIndex,
                                                  ),
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: TextFieldWidget(
                                                    key: Key(
                                                      'Key68c_${widget!.keyComponents.toString()}',
                                                    ),
                                                    label: getJsonField(
                                                      elementsItem,
                                                      r'''$.attributes.question.label''',
                                                    ).toString(),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          if (getJsonField(
                                            elementsItem,
                                            r'''$.isDate''',
                                          ))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 20.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .jett,
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: wrapWithModel(
                                                  model: _model.dateModels
                                                      .getModel(
                                                    widget!.keyComponents
                                                        .toString(),
                                                    elementsIndex,
                                                  ),
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: DateWidget(
                                                    key: Key(
                                                      'Key8vp_${widget!.keyComponents.toString()}',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          if (getJsonField(
                                            elementsItem,
                                            r'''$.isChoicechips''',
                                          ))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 20.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(),
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: wrapWithModel(
                                                  model: _model
                                                      .choiceChipsModels
                                                      .getModel(
                                                    widget!.keyComponents
                                                        .toString(),
                                                    elementsIndex,
                                                  ),
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: ChoiceChipsWidget(
                                                    key: Key(
                                                      'Key4af_${widget!.keyComponents.toString()}',
                                                    ),
                                                    choices: (getJsonField(
                                                      elementsItem,
                                                      r'''$.attributes.question.answers''',
                                                      true,
                                                    ) as List)
                                                        .map<String>(
                                                            (s) => s.toString())
                                                        .toList(),
                                                    action: () async {
                                                      logFirebaseEvent(
                                                          'APP_SCREEN_Container_4afp4xbl_CALLBACK');
                                                      logFirebaseEvent(
                                                          'ChoiceChips_action_block');
                                                      await action_blocks
                                                          .postscreen(
                                                        context,
                                                        sequenceId: widget!
                                                            .sequence
                                                            ?.toString(),
                                                        nu: _model
                                                            .textFieldModels
                                                            .getValueForKey(
                                                          widget!.keyComponents
                                                              .toString(),
                                                          (m) => m
                                                              .textController
                                                              .text,
                                                        ),
                                                        rangeTextfield: _model
                                                            .rangeModels
                                                            .getValueForKey(
                                                              widget!
                                                                  .keyComponents
                                                                  .toString(),
                                                              (m) =>
                                                                  m.sliderValue,
                                                            )
                                                            .toString(),
                                                        sequenceNumber:
                                                            widget!.sequence,
                                                        radio: _model
                                                            .choiceChipsModels
                                                            .getValueForKey(
                                                          widget!.keyComponents
                                                              .toString(),
                                                          (m) => m
                                                              .choiceChipsValue,
                                                        ),
                                                        radioMultiple: FFAppState()
                                                            .radioMultipleString,
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                          if (getJsonField(
                                            elementsItem,
                                            r'''$.isRadio''',
                                          ))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 20.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: wrapWithModel(
                                                    model: _model.radioModels
                                                        .getModel(
                                                      widget!.keyComponents
                                                          .toString(),
                                                      elementsIndex,
                                                    ),
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: RadioWidget(
                                                      key: Key(
                                                        'Keyfxi_${widget!.keyComponents.toString()}',
                                                      ),
                                                      choices: (getJsonField(
                                                        elementsItem,
                                                        r'''$.attributes.question.answers''',
                                                        true,
                                                      ) as List)
                                                          .map<String>((s) =>
                                                              s.toString())
                                                          .toList(),
                                                      action: () async {
                                                        logFirebaseEvent(
                                                            'APP_SCREEN_Container_fxivt0zf_CALLBACK');
                                                        logFirebaseEvent(
                                                            'Radio_haptic_feedback');
                                                        HapticFeedback
                                                            .mediumImpact();
                                                        logFirebaseEvent(
                                                            'Radio_action_block');
                                                        await action_blocks
                                                            .postscreen(
                                                          context,
                                                          sequenceId: widget!
                                                              .sequence
                                                              ?.toString(),
                                                          nu: _model
                                                              .textFieldModels
                                                              .getValueForKey(
                                                            widget!
                                                                .keyComponents
                                                                .toString(),
                                                            (m) => m
                                                                .textController
                                                                .text,
                                                          ),
                                                          rangeTextfield: _model
                                                              .rangeModels
                                                              .getValueForKey(
                                                                widget!
                                                                    .keyComponents
                                                                    .toString(),
                                                                (m) => m
                                                                    .sliderValue,
                                                              )
                                                              .toString(),
                                                          sequenceNumber:
                                                              widget!.sequence,
                                                          radio: 'NA',
                                                          radioMultiple:
                                                              FFAppState()
                                                                  .radioMultipleString,
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          if (getJsonField(
                                            elementsItem,
                                            r'''$.isRadioMultiple''',
                                          ))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 20.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(),
                                                child: wrapWithModel(
                                                  model: _model
                                                      .radioMultipleModels
                                                      .getModel(
                                                    widget!.keyComponents
                                                        .toString(),
                                                    elementsIndex,
                                                  ),
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: RadioMultipleWidget(
                                                    key: Key(
                                                      'Keyrtf_${widget!.keyComponents.toString()}',
                                                    ),
                                                    choices: (getJsonField(
                                                      elementsItem,
                                                      r'''$.attributes.question.answers''',
                                                      true,
                                                    ) as List)
                                                        .map<String>(
                                                            (s) => s.toString())
                                                        .toList(),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          if (getJsonField(
                                            elementsItem,
                                            r'''$.isRange''',
                                          ))
                                            Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(),
                                              child: wrapWithModel(
                                                model:
                                                    _model.rangeModels.getModel(
                                                  widget!.keyComponents
                                                      .toString(),
                                                  elementsIndex,
                                                ),
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: RangeWidget(
                                                  key: Key(
                                                    'Keyds1_${widget!.keyComponents.toString()}',
                                                  ),
                                                  labelStart: getJsonField(
                                                            elementsItem,
                                                            r'''$.attributes.question.label_start''',
                                                          ) !=
                                                          null
                                                      ? getJsonField(
                                                          elementsItem,
                                                          r'''$.attributes.question.label_start''',
                                                        ).toString()
                                                      : null,
                                                  labelEnd: getJsonField(
                                                            elementsItem,
                                                            r'''$.attributes.question.label_end''',
                                                          ) !=
                                                          null
                                                      ? getJsonField(
                                                          elementsItem,
                                                          r'''$.attributes.question.label_end''',
                                                        ).toString()
                                                      : null,
                                                  rangeStart: getJsonField(
                                                    elementsItem,
                                                    r'''$.attributes.question.range_start''',
                                                  ),
                                                  rangeEnd: getJsonField(
                                                    elementsItem,
                                                    r'''$.attributes.question.range_end''',
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ]
                                            .divide(SizedBox(height: 20.0))
                                            .addToStart(SizedBox(height: 20.0))
                                            .addToEnd(SizedBox(height: 20.0)),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              if (FFAppState().agirBlockerSubmit && !_model.isAgirContentOpen)
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if ((FFAppState().screenLast != 0) &&
                            (FFAppState().screenLast != null))
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'APP_SCREEN_PAGE_Button_Container_ON_TAP');
                              logFirebaseEvent('Button_Container_backend_call');
                              _model.apiResultzu5Copy =
                                  await ApiAdereGroup.pOSTFlowresetCall.call(
                                deviceId: FFAppState().deviceId,
                                id: widget!.sequence?.toString(),
                                last: FFAppState().screenLast,
                                section: widget!.phase,
                              );

                              if ((_model.apiResultzu5Copy?.succeeded ??
                                  true)) {
                                logFirebaseEvent(
                                    'Button_Container_update_app_state');
                                FFAppState().screenLast = 0;
                                safeSetState(() {});
                                logFirebaseEvent(
                                    'Button_Container_navigate_to');

                                context.pushNamed(
                                  'APP-SCREEN',
                                  queryParameters: {
                                    'sequence': serializeParam(
                                      widget!.sequence,
                                      ParamType.int,
                                    ),
                                  }.withoutNulls,
                                );
                              }

                              safeSetState(() {});
                            },
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).jett,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.keyboard_arrow_left_rounded,
                                color: Colors.white,
                                size: 34.0,
                              ),
                            ),
                          ),
                        if (FFAppState().redirect && FFAppState().withContinue)
                          Expanded(
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'APP_SCREEN_PAGE_Button_Container_ON_TAP');
                                logFirebaseEvent(
                                    'Button_Container_haptic_feedback');
                                HapticFeedback.mediumImpact();
                                logFirebaseEvent(
                                    'Button_Container_update_app_state');
                                FFAppState().screenLast = 0;
                                safeSetState(() {});
                                logFirebaseEvent(
                                    'Button_Container_navigate_to');

                                context.pushNamed(
                                  'APP-SCREEN',
                                  queryParameters: {
                                    'keyComponents': serializeParam(
                                      0,
                                      ParamType.int,
                                    ),
                                    'sequence': serializeParam(
                                      FFAppState().destination,
                                      ParamType.int,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).jett,
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 17.0, 20.0, 16.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Continuer',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
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
                          ),
                        if (!FFAppState().redirect && FFAppState().withContinue)
                          Expanded(
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'APP_SCREEN_PAGE_Button_Container_ON_TAP');
                                logFirebaseEvent(
                                    'Button_Container_haptic_feedback');
                                HapticFeedback.mediumImpact();
                                logFirebaseEvent(
                                    'Button_Container_action_block');
                                await action_blocks.postscreen(
                                  context,
                                  sequenceId: widget!.sequence?.toString(),
                                  nu: _model.textFieldModels.getValueForKey(
                                    widget!.keyComponents.toString(),
                                    (m) => m.textController.text,
                                  ),
                                  rangeTextfield: _model.rangeModels
                                      .getValueForKey(
                                        widget!.keyComponents.toString(),
                                        (m) => m.sliderValue,
                                      )
                                      .toString(),
                                  sequenceNumber: widget!.sequence,
                                  radio: 'NA',
                                  radioMultiple:
                                      FFAppState().radioMultipleString,
                                  phase: widget!.phase,
                                  drop: FFAppState().dropdownvalue,
                                  date: dateTimeFormat(
                                    "d/M/y",
                                    _model.dateModels.getValueForKey(
                                      widget!.keyComponents.toString(),
                                      (m) => m.datePicked,
                                    ),
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  ),
                                );
                              },
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).jett,
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 17.0, 20.0, 16.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Continuer',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
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
                          ),
                      ].divide(SizedBox(width: 20.0)),
                    ),
                  ),
                ),
              if (FFAppState().onboardLevel >= 7)
                Container(
                  width: double.infinity,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).isabelline,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                  ),
                  child: wrapWithModel(
                    model: _model.adereDashboardNavigationBottomModel,
                    updateCallback: () => safeSetState(() {}),
                    child: AdereDashboardNavigationBottomWidget(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
