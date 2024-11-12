import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'adere_presentation_generale_model.dart';
export 'adere_presentation_generale_model.dart';

class AderePresentationGeneraleWidget extends StatefulWidget {
  const AderePresentationGeneraleWidget({super.key});

  @override
  State<AderePresentationGeneraleWidget> createState() =>
      _AderePresentationGeneraleWidgetState();
}

class _AderePresentationGeneraleWidgetState
    extends State<AderePresentationGeneraleWidget> {
  late AderePresentationGeneraleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AderePresentationGeneraleModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ADERE_PRESENTATION_GENERALE'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('ADERE_PRESENTATION_GENERALE_ADERE_PRESEN');
      logFirebaseEvent('ADERE_PRESENTATION_GENERALE_update_app_s');
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
                                  'ADERE_PRESENTATION_GENERALE_Text_a9dwyr2');
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
                                          'Bienvenue dans ADERE',
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
                                          'Vous prenez un traitement au long cours pour une maladie chronique.\n\nCes prises de médicaments chaque jour ne sont jamais des actes anodins : elles compliquent votre vie quotidienne, sont astreignantes, vous rappellent chaque jour que vous êtes malade alors que vous aimeriez bien penser à autre chose.\n\nLes médicaments dans les maladies chroniques jouent un rôle majeur. Ils vont être pris durant de très longues périodes.\n\nADERE est le premier service pour répondre à tous les besoins concernant l’aide nécessaire pour adhérer correctement à ces traitements.\n\nSi ce programme vous semble par moment long, n’oubliez pas que vous partez pour plusieurs années et qu’il est important que vous soyez « maître de la situation ».',
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
                                          'ADERE',
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
                                          'ADERE est une solution pour aider au Bon Usage du Médicament et améliorer l’adhérence mais aussi aux rappels des actes et examens à faire et aux gestes de la vie quotidienne pour avoir une meilleure hygiène de vie.\n\nL\'Organisation mondiale de la santé (OMS) définit l\'adhésion comme « la mesure du comportement d\'une personne à prendre des médicaments, suivre un régime alimentaire et/ou exécuter des changements de style de vie correspondant aux recommandations convenues émanant d\'un professionnel de la santé ».',
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
                                          'Qu’est-ce qu’un médicament ?',
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
                                          'C’est toute substance (autre qu\'un aliment) utilisée pour prévenir, diagnostiquer, traiter ou soulager les symptômes d\'une maladie ou d\'un état anormal.\n\nLes drogues peuvent également affecter le fonctionnement du cerveau et du reste du corps et provoquer des changements d’humeur, de conscience, de pensées, de sentiments ou de comportement. Certains types de drogues, comme les opioïdes, peuvent donner lieu à un abus ou conduire à une dépendance.\n\nLe médicament, est probablement une des plus belles inventions du XX siècle : son mode d’action dans un organisme dont la sophistication est unique, son efficacité, sa précision font toute notre admiration. Mais tout médicament peut avoir des effets secondaires, être moins efficaces et dans tous les cas doit bénéficier d’une vraie surveillance.',
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
                                          4)
                                        Text(
                                          'Les maladies chroniques',
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
                                          4)
                                        Text(
                                          'En France, plus de 15 millions de personnes sont atteintes de maladies chroniques, responsables de difficultés personnelles, familiales et socio-professionnelles importantes et d’altération de la qualité de la vie.\n\nPour le Haut-Commissariat à la Santé Publique : « la prise en charge des personnes atteintes de maladies chroniques constitue aujourd’hui un objectif à la fois important et réaliste, dans le but in fine d’améliorer l’état de santé global de la population concernée, ainsi que sa qualité de vie et celle des proches».\n\nCe nombre de patients atteints de maladies chroniques augmentent en partie via les progrès de la médecine et l’industrie pharmaceutique qui développent des médicaments de plus en plus efficace, précis et personnalisés.',
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
                                          5)
                                        Text(
                                          'Les chiffres de l’adhérence  ',
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
                                          5)
                                        Text(
                                          'Quelle que soit la pathologie et sa gravité, un pourcentage important de patients ne suivent pas correctement leur traitement et ont décroché dès la fin de la première année !\n\nCes chiffres sont à peine croyables : il en va de la responsabilité personnelle de chacun de prendre ses médicaments correctement.',
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
                                          6)
                                        Text(
                                          'Les couts de l’adhérence  ',
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
                                          6)
                                        Text(
                                          'Dans un contexte de déficit permanent du budget de la Sécurité Sociale, les dépenses de santé liées à des complications provoquées par une mauvaise adhérence aux médicaments  ne sont pas acceptables : il en va de la responsabilité collective car il s’agit d’un problème de santé publique.',
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
                                          7)
                                        Text(
                                          'Qu’allons-nous vous proposer ?',
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
                                          7)
                                        Text(
                                          '• Un questionnaire initial pour mieux vous connaître.\n\n• Une évaluation de vos connaissances sur l’adhérence.\n\n• Une analyse de votre ordonnance et la saisie de vos médicaments.\n\n• Un suivi de la manière dont vous respectez les prescriptions.\n\n• Une étude des facteurs de risques pour mieux vous protéger au long cours.\n\n• Une identification des causes de mauvaise adhérence et des moyens d’y remédier.\n\n• Des actions  et conseils pour mieux suivre votre traitement.\n\n• Des services pour vous aider à être plus adhérents : informations, boutique, système de récompense.',
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
                                            return 0.14;
                                          } else if (FFAppState()
                                                  .presentationTripleTextPosition ==
                                              2) {
                                            return 0.28;
                                          } else if (FFAppState()
                                                  .presentationTripleTextPosition ==
                                              3) {
                                            return 0.42;
                                          } else if (FFAppState()
                                                  .presentationTripleTextPosition ==
                                              4) {
                                            return 0.56;
                                          } else if (FFAppState()
                                                  .presentationTripleTextPosition ==
                                              5) {
                                            return 0.70;
                                          } else if (FFAppState()
                                                  .presentationTripleTextPosition ==
                                              6) {
                                            return 0.84;
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
                                              'ADERE_PRESENTATION_GENERALE_Icon_Contain');
                                          if (functions.add2numbers(
                                                  FFAppState()
                                                      .presentationTripleTextPosition,
                                                  1) ==
                                              '8') {
                                            logFirebaseEvent(
                                                'Icon_Container_update_app_state');
                                            FFAppState().onboardLevel = 2;
                                            safeSetState(() {});
                                            logFirebaseEvent(
                                                'Icon_Container_backend_call');
                                            await UsersTable().update(
                                              data: {
                                                'onboarding_level': 2,
                                              },
                                              matchingRows: (rows) => rows.eq(
                                                'id',
                                                currentUserUid,
                                              ),
                                            );
                                            logFirebaseEvent(
                                                'Icon_Container_navigate_to');

                                            context
                                                .pushNamed('ADERE_DASHBOARD');
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
