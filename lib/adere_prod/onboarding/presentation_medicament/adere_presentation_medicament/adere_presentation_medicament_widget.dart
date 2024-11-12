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
import 'adere_presentation_medicament_model.dart';
export 'adere_presentation_medicament_model.dart';

class AderePresentationMedicamentWidget extends StatefulWidget {
  const AderePresentationMedicamentWidget({super.key});

  @override
  State<AderePresentationMedicamentWidget> createState() =>
      _AderePresentationMedicamentWidgetState();
}

class _AderePresentationMedicamentWidgetState
    extends State<AderePresentationMedicamentWidget> {
  late AderePresentationMedicamentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AderePresentationMedicamentModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ADERE_PRESENTATION_MEDICAMENT'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('ADERE_PRESENTATION_MEDICAMENT_ADERE_PRES');
      logFirebaseEvent('ADERE_PRESENTATION_MEDICAMENT_update_app');
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
                                  'ADERE_PRESENTATION_MEDICAMENT_Text_9sk8g');
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
                                          'Comprendre le médicament',
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
                                          'Vous avez saisi vos médicaments avec les différentes informations spécifiques à chacun d’entre eux.\n\nNous proposons de mieux comprendre chaque médicament car vous allez les prendre pendant de nombreuses années.\n\nCette information nous vous la présentons selon trois rubriques que vous découvriez progressivement :\n\n• Le médicament avec des informations concernant le médicament lui-même.\n\n• La prescription et les différentes informations qui y sont liées.\n\n• Les précautions pour toujours rester dans le Bon Usage du Médicament.',
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
                                          'Informations sur le médicament',
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
                                          'Il est important que vous connaissiez mieux vos médicaments. Une première information sur le médicament lui-même vous est proposée ici.\n\nCes éléments sont un peu techniques et vous pouvez passer rapidement. Mais ne loupez pas les quelques informations importantes que nous allons vous citer ici et que vous retrouverez plus loin :\n\n• Composition\n• Pharmacodynamique\n• Pharmaco cinétique\n• Sécurité préclinique\n• Modalité de Conservation\n• Modalités manipulation/ élimination',
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
                                          'Informations sur la prescription',
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
                                          'Une seconde information sur la prescription et ses différentes composantes.\n\nCes informations sont essentielles pour comprendre les raisons pour lesquelles les médicaments vous ont été prescrits :\n\n• Formes présentation\n• Prescription, délivrance, prise en charge\n• Indications\n• Contre-indications\n• Posologie et mode d’administration',
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
                                          'Informations sur les précautions',
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
                                          'Enfin une troisième série d’informations sur les précautions à respecter qui sont essentielles pour que les avantages du traitement restent supérieurs aux inconvénients :\n\n• Mise en garde et précautions d’emploi\n• Interactions\n• Effets indésirables\n• Conduite et utilisation machine\n• Fertilité/ Grossesse/ Allaitement\n• Surdosage',
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
                                            return 0.25;
                                          } else if (FFAppState()
                                                  .presentationTripleTextPosition ==
                                              2) {
                                            return 0.50;
                                          } else if (FFAppState()
                                                  .presentationTripleTextPosition ==
                                              3) {
                                            return 0.75;
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
                                              'ADERE_PRESENTATION_MEDICAMENT_Icon_Conta');
                                          if (functions.add2numbers(
                                                  1,
                                                  FFAppState()
                                                      .presentationTripleTextPosition) ==
                                              '5') {
                                            logFirebaseEvent(
                                                'Icon_Container_backend_call');
                                            await UsersTable().update(
                                              data: {
                                                'onboarding_level': 4,
                                                'onboarding_question_level': 0,
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
