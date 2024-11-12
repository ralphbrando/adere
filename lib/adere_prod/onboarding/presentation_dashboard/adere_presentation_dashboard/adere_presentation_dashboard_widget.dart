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
import 'adere_presentation_dashboard_model.dart';
export 'adere_presentation_dashboard_model.dart';

class AderePresentationDashboardWidget extends StatefulWidget {
  const AderePresentationDashboardWidget({super.key});

  @override
  State<AderePresentationDashboardWidget> createState() =>
      _AderePresentationDashboardWidgetState();
}

class _AderePresentationDashboardWidgetState
    extends State<AderePresentationDashboardWidget> {
  late AderePresentationDashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AderePresentationDashboardModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ADERE_PRESENTATION_DASHBOARD'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('ADERE_PRESENTATION_DASHBOARD_ADERE_PRESE');
      logFirebaseEvent('ADERE_PRESENTATION_DASHBOARD_update_app_');
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
                                  'ADERE_PRESENTATION_DASHBOARD_Text_lv5jvz');
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
                                          'Vous informer',
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
                                          'Chaque jour ADERE vous informe et vous conseille sur les nouveautés concernant votre maladie et ses traitements pour mieux gérer votre santé et anticiper.\n\n• Un fil info pour vous tenir au courant des nouveautés\n\n• Le chiffre du jour\n\nEnfin chaque semaine un dossier sur une thématique choisie en fonction  de l’actualité, d’une action de santé publique nationale.\n\nLe réseau d’experts d’ADERE  s’attache à vous fournir des informations validées scientifiquement.',
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
                                          'Les services',
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
                                          'Découvrez les différents services que vous propose ADERE et qui vont vous permettre \nd’améliorer l’adhérence aux médicaments et ainsi de mieux suivre votre maladie.\n\nCes services comprennent :\n\n• Un espace personnel\n• Un programme d’alertes\n• Une boutique\n• Un système de récompenses',
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
                                          'Espace personnel',
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
                                          'ANTICYP vous réserve un espace personnel organisé sur 3 étagères (ou en 3 placards) :\n\n• Un espace gestion\n• Votre abonnement\n• Votre parcours ADERE\n• Vos points de récompense\n• Un espace dossiers\n• Résultats des examens et bilans\n• Ordonnances\n• Résultats des évaluations\n• Un espace de lecture\n• Vos fiches\n• Vos news\n\n• Enfin un Espace actions à faire : c’est là que vous retrouverez pour chaque programme que vous aurez choisi de conserver les actions à faire, et bien sûr à refaire.',
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
                                          'Mes alertes',
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
                                          'ADERE met à votre disposition un système d’alertes pour vous protéger de situations liées à vos médicaments et en premier lieu à leur disponibilité.\n\nCes Alertes peuvent concerner aussi le climat, les épidémies, la  pollution ou tout événement pouvant avoir un impact sur la prise et l’efficacité des médicaments.\n\nADERE vous rappelle aussi les dates de rendez-vous avec vos professionnels de santé et les dates d’évènements pouvant vous intéresser.\n\nEnfin ADERE vous alerte sur des actions à faire dans le cadre de vos programmes et des changements de comportement.',
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
                                          'Présentation de la boutique',
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
                                          'Une boutique, pour quoi faire ? Pour vous faire découvrir :\n\n• Des produits sélectionnés pour protéger votre santé\n\n• Des objets connectés pour mieux vous surveiller et anticiper\n\n• Des applications pour compléter nos conseils\n\n• Des services pour trouver les aides dont vous auriez besoin\n\nTous ces éléments sont sélectionnés par nos experts. Une boutique aussi pour vous faire bénéficier d’offres promotionnelles liées aux récompenses qu’ADERE va vous attribuer en fonction de votre activité dans l’application.',
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
                                          'Les récompenses',
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
                                          'ADERE vous propose de récompenser votre persévérance et vos efforts.\n\nLe système de récompense est commun/équivalent à tous les programmes et à toutes les séquences. Il fonctionne de la même manière d’une séquence à une autre.\n\nCe système repose en définissant un statut  qui n’a aucune correspondance monétaire  mais donne accès ou pas à certains avantages.\n\nTous les utilisateurs inscrits bénéficient des mêmes mécaniques de fonctionnement du système de récompense : il n’y a pas de différence entre les différentes thématiques, entre les différents programmes.',
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
                                          'Rappel',
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
                                          'Pour rappel ADERE est une solution pour aider au Bon Usage du Médicament et améliorer l’adhérence aux médicaments, aux rappels des actes et examens à faire et aux gestes de la vie quotidienne pour avoir une meilleure hygiène de vie.\n\nLes médicaments dans les maladies chroniques sont essentiels  pour stabiliser l’évolution, éviter les complications. Ces médicament vont être pris durant de très longues périodes et vous allez devoir apprendre à vivre avec.\n\nADERE est le premier service pour répondre à tous les besoins concernant l’aide nécessaire pour adhérer correctement à ces traitements.',
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
                                          8)
                                        Text(
                                          'Pour répondre à ce besoin',
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
                                          8)
                                        Text(
                                          'Nous proposons :\n\n• Une détection à fréquence régulière des différents problèmes liés aux prises\n\n• Une identification des causes de ces problèmes et des propositions pour y faire face\n\n• Un suivi des symptômes et des paramètres physiologiques de votre maladie\n\n• Une détection des facteurs de risque de mauvaise adhérence et comment les réduire\n\n• Une gestion des rendez-vous de suivi de votre maladie, de dépistage\n\n• Un récapitulatif des actions à faire, des alertes dans votre espace personnel\n\n• Un système d’alertes et de conseils pour mieux suivre les prescriptions\n\n• Et un système de récompenses à découvrir',
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
                                            return 0.125;
                                          } else if (FFAppState()
                                                  .presentationTripleTextPosition ==
                                              2) {
                                            return 0.25;
                                          } else if (FFAppState()
                                                  .presentationTripleTextPosition ==
                                              3) {
                                            return 0.375;
                                          } else if (FFAppState()
                                                  .presentationTripleTextPosition ==
                                              4) {
                                            return 0.50;
                                          } else if (FFAppState()
                                                  .presentationTripleTextPosition ==
                                              5) {
                                            return 0.625;
                                          } else if (FFAppState()
                                                  .presentationTripleTextPosition ==
                                              6) {
                                            return 0.75;
                                          } else if (FFAppState()
                                                  .presentationTripleTextPosition ==
                                              7) {
                                            return 0.875;
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
                                              'ADERE_PRESENTATION_DASHBOARD_Icon_Contai');
                                          if (functions.add2numbers(
                                                  FFAppState()
                                                      .presentationTripleTextPosition,
                                                  1) ==
                                              '9') {
                                            logFirebaseEvent(
                                                'Icon_Container_update_app_state');
                                            FFAppState().onboardLevel = 7;
                                            safeSetState(() {});
                                            logFirebaseEvent(
                                                'Icon_Container_backend_call');
                                            await UsersTable().update(
                                              data: {
                                                'onboarding_level': 7,
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
