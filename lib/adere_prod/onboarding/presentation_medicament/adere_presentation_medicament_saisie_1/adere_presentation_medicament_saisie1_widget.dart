import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'adere_presentation_medicament_saisie1_model.dart';
export 'adere_presentation_medicament_saisie1_model.dart';

class AderePresentationMedicamentSaisie1Widget extends StatefulWidget {
  const AderePresentationMedicamentSaisie1Widget({super.key});

  @override
  State<AderePresentationMedicamentSaisie1Widget> createState() =>
      _AderePresentationMedicamentSaisie1WidgetState();
}

class _AderePresentationMedicamentSaisie1WidgetState
    extends State<AderePresentationMedicamentSaisie1Widget> {
  late AderePresentationMedicamentSaisie1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => AderePresentationMedicamentSaisie1Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ADERE_PRESENTATION_MEDICAMENT_SAISIE_1'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('ADERE_PRESENTATION_MEDICAMENT_SAISIE_1_A');
      logFirebaseEvent('ADERE_PRESENTATION_MEDICAMENT_SAISIE_1_u');
      FFAppState().presentationTripleTextPosition = 1;
      safeSetState(() {});
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

    return GestureDetector(
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
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
                                  'ADERE_PRESENTATION_MEDICAMENT_SAISIE_1_T');
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
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'PRÉSENTATION',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .eerieBlack,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 6.0, 0.0, 0.0),
                                          child: Container(
                                            width: 120.0,
                                            height: 5.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .eerieBlack,
                                              borderRadius:
                                                  BorderRadius.circular(100.0),
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
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).platinum,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 27.0, 20.0, 20.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if (FFAppState()
                                              .presentationTripleTextPosition ==
                                          1)
                                        Text(
                                          'Le Vidal',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .eerieBlack,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                        ),
                                      if (FFAppState()
                                              .presentationTripleTextPosition ==
                                          1)
                                        Text(
                                          'Nous allons maintenant aborder la saisie des médicaments et le vaste sujet des informations concernant chacun d’entre eux.\n\nPour cela ADERE dispose d’un partenariat avec le VIDAL qui est la société référente  sur les informations concernant les médicaments.\n\nVous avez surement eu l’occasion de voir sur le bureau de votre médecin un livre rouge de taille importante : c’est le VIDAL dont nous utilisons la version numérique.\n\nLes informations sont donc fiables et validées.',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .eerieBlack,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      if (FFAppState()
                                              .presentationTripleTextPosition ==
                                          2)
                                        Text(
                                          'La saisie des médicaments',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .eerieBlack,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                        ),
                                      if (FFAppState()
                                              .presentationTripleTextPosition ==
                                          2)
                                        Text(
                                          'Cette saisie qui peut vous paraître fastidieuse est au centre  du service ADERE et nous vous recommandons d’y attacher la plus grande importance et de prendre votre temps.\n\nSaisir correctement vos médicaments vous permettra :\n\n• D’avoir accès à une information fiable, pratique et utile au quotidien.\n\n• De pouvoir donner au médecin la liste des traitements actuels issus de plusieurs prescripteurs  et de garder vos ordonnances à portée de main.\n\n• De gérer votre automédication sans prendre de risques.\n\n• De bénéficier de conseils au quotidien et d’améliorer votre adhérence.',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .eerieBlack,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      if (FFAppState()
                                              .presentationTripleTextPosition ==
                                          3)
                                        Text(
                                          'Comment faire ?',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .eerieBlack,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                        ),
                                      if (FFAppState()
                                              .presentationTripleTextPosition ==
                                          3)
                                        Text(
                                          'Deux possibilités :\n\n• Soit vous disposez d’une e-ordonnance donc elle existe sous forme numérique.\n\n• Soit vous avez une ordonnance classique manuscrite et vous allez devoir saisir chaque médicament.\n\nL’idéal et notre conseil est de saisir la totalité de votre, de vos ordonnances dès maintenant. Cela peut prendre du temps, lancez-vous dans cette saisie quand vous avez un peu de temps devant vous.\n\nQuand vous aurez des changements de traitement vous les inscrirez à partir de cette ordonnance de référence.Vous pouvez également ne saisir que les médicaments importants c’est à dire concernant votre maladie chronique.\n\nRépétons-le, prenez votre temps, ne vous lancez dans cette saisie que si vous avez un moment de libre pendant lequel vous ne serez pas dérangé.',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .eerieBlack,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                    ].divide(SizedBox(height: 20.0)),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1.0, 1.0),
                                child: Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(),
                                  child: Stack(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    children: [
                                      CircularPercentIndicator(
                                        percent: () {
                                          if (FFAppState()
                                                  .presentationTripleTextPosition ==
                                              1) {
                                            return 0.33;
                                          } else if (FFAppState()
                                                  .presentationTripleTextPosition ==
                                              2) {
                                            return 0.67;
                                          } else {
                                            return 1.0;
                                          }
                                        }(),
                                        radius: 35.0,
                                        lineWidth: 4.0,
                                        animation: true,
                                        animateFromLastPercent: true,
                                        progressColor:
                                            FlutterFlowTheme.of(context).jett,
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .ashGray,
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'ADERE_PRESENTATION_MEDICAMENT_SAISIE_1_I');
                                          if (functions.add2numbers(
                                                  1,
                                                  FFAppState()
                                                      .presentationTripleTextPosition) ==
                                              '4') {
                                            logFirebaseEvent(
                                                'Icon_Container_navigate_to');

                                            context.pushNamed(
                                                'ADERE_PRESENTATION_MEDICAMENT_SAISIE_2');
                                          }
                                          logFirebaseEvent(
                                              'Icon_Container_update_app_state');
                                          FFAppState()
                                                  .presentationTripleTextPosition =
                                              FFAppState()
                                                      .presentationTripleTextPosition +
                                                  1;
                                          safeSetState(() {});
                                        },
                                        child: Container(
                                          width: 50.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .jett,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Icon(
                                              Icons.navigate_next_rounded,
                                              color: Colors.white,
                                              size: 50.0,
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
                      ),
                    ]
                        .divide(SizedBox(height: 20.0))
                        .addToStart(SizedBox(height: 20.0)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
