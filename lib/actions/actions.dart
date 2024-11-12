import '/adere_prod/composants/pause/pause/pause_widget.dart';
import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/api_requests/api_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/revenue_cat_util.dart' as revenue_cat;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Future postscreen(
  BuildContext context, {
  required String? sequenceId,
  String? nu,
  required String? rangeTextfield,
  required int? sequenceNumber,
  required String? radio,
  List<String>? radioMultiple,
  int? phase,
  String? drop,
  String? date,
}) async {
  ApiCallResponse? apiResultmdjd;

  logFirebaseEvent('postscreen_update_app_state');
  FFAppState().isTechnique = false;
  logFirebaseEvent('postscreen_backend_call');
  apiResultmdjd = await ApiAdereGroup.pOSTInteractionCall.call(
    id: sequenceId,
    deviceId: currentUserUid,
    number: nu,
    range: rangeTextfield,
    radio: radio,
    radioMultipleList: radioMultiple,
    phase: phase?.toString(),
    dropdown: drop,
    date: date,
  );

  if ((apiResultmdjd?.succeeded ?? true)) {
    if (ApiAdereGroup.pOSTInteractionCall.nextPath(
          (apiResultmdjd?.jsonBody ?? ''),
        ) !=
        null) {
      logFirebaseEvent('postscreen_update_app_state');
      FFAppState().screenLast = FFAppState().screenNow;
      logFirebaseEvent('postscreen_navigate_to');

      context.pushNamed(
        'APP-SCREEN',
        queryParameters: {
          'sequence': serializeParam(
            sequenceNumber,
            ParamType.int,
          ),
          'phase': serializeParam(
            phase,
            ParamType.int,
          ),
        }.withoutNulls,
      );
    } else {
      if (getJsonField(
            (apiResultmdjd?.jsonBody ?? ''),
            r'''$.phase''',
          ) !=
          null) {
        logFirebaseEvent('postscreen_update_app_state');
        FFAppState().screenLast = 0;
        logFirebaseEvent('postscreen_navigate_to');

        context.pushNamed(
          'ADERE_DASHBOARD_PHASES',
          queryParameters: {
            'sequence': serializeParam(
              sequenceNumber,
              ParamType.int,
            ),
          }.withoutNulls,
        );
      }
    }

    if (getJsonField(
      (apiResultmdjd?.jsonBody ?? ''),
      r'''$.home''',
    )) {
      logFirebaseEvent('postscreen_update_app_state');
      FFAppState().screenLast = 0;
      FFAppState().update(() {});
      if (phase != null) {
        logFirebaseEvent('postscreen_navigate_to');

        context.pushNamed(
          'ADERE_DASHBOARD_PHASES',
          queryParameters: {
            'sequence': serializeParam(
              sequenceNumber,
              ParamType.int,
            ),
          }.withoutNulls,
        );
      } else {
        logFirebaseEvent('postscreen_alert_dialog');
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              content: Text('VOS DONNÉES SONT ENREGISTRÉES DANS VOTRE COMPTE'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        logFirebaseEvent('postscreen_navigate_to');

        context.pushNamed('ADERE_DASHBOARD');
      }
    } else if (getJsonField(
      (apiResultmdjd?.jsonBody ?? ''),
      r'''$.coach''',
    )) {
      logFirebaseEvent('postscreen_update_app_state');
      FFAppState().screenLast = 0;
      FFAppState().onboardLevel = 6;
      FFAppState().update(() {});
      logFirebaseEvent('postscreen_backend_call');
      await UsersTable().update(
        data: {
          'onboarding_level': 6,
        },
        matchingRows: (rows) => rows.eq(
          'id',
          currentUserUid,
        ),
      );
      logFirebaseEvent('postscreen_navigate_to');

      context.pushNamed('ADERE_DASHBOARD');
    } else if (getJsonField(
      (apiResultmdjd?.jsonBody ?? ''),
      r'''$.initial_completed''',
    )) {
    } else if (getJsonField(
      (apiResultmdjd?.jsonBody ?? ''),
      r'''$.onboarding_1''',
    )) {
    } else if (getJsonField(
      (apiResultmdjd?.jsonBody ?? ''),
      r'''$.onboarding_2''',
    )) {}

    logFirebaseEvent('postscreen_update_app_state');
    FFAppState().screenLast = 0;
  }
}

Future payWall(
  BuildContext context, {
  required String? packageId,
}) async {
  bool? isPurchaseOk;
  ApiCallResponse? apiResult3mv;

  logFirebaseEvent('payWall_revenue_cat');
  isPurchaseOk = await revenue_cat.purchasePackage(packageId!);
  if (isPurchaseOk!) {
    logFirebaseEvent('payWall_backend_call');
    apiResult3mv = await ApiAdereGroup.pOSTMeCall.call(
      deviceId: FFAppState().deviceId,
      mode: 'data',
      affiliationLink: FFAppState().affiliationCode,
    );

    if ((apiResult3mv?.succeeded ?? true)) {
      logFirebaseEvent('payWall_navigate_to');

      context.pushNamed('ADERE_DASHBOARD');
    }
  } else {
    logFirebaseEvent('payWall_show_snack_bar');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Erreur lors de la commande. Veuillez reessayer.',
          style: TextStyle(),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).secondary,
      ),
    );
  }
}

Future navBarStatus(
  BuildContext context, {
  required String? toChange,
}) async {
  logFirebaseEvent('NavBarStatus_update_app_state');
  FFAppState().NavBar1 = false;
  FFAppState().NavBar2 = false;
  FFAppState().NavBar3 = false;
  FFAppState().NavBar4 = false;
  FFAppState().NavBar5 = false;
  FFAppState().codecolor = '';
  FFAppState().codecolorlight = '';
  FFAppState().update(() {});
  if (toChange == 'NavBar1') {
    logFirebaseEvent('NavBarStatus_update_app_state');
    FFAppState().NavBar1 = true;
    FFAppState().update(() {});
  } else if (toChange == 'NavBar2') {
    logFirebaseEvent('NavBarStatus_update_app_state');
    FFAppState().NavBar2 = true;
    FFAppState().update(() {});
  } else if (toChange == 'NavBar3') {
    logFirebaseEvent('NavBarStatus_update_app_state');
    FFAppState().NavBar3 = true;
    FFAppState().update(() {});
  } else if (toChange == 'NavBar4') {
    logFirebaseEvent('NavBarStatus_update_app_state');
    FFAppState().NavBar4 = true;
    FFAppState().update(() {});
  } else if (toChange == 'NavBar5') {
    logFirebaseEvent('NavBarStatus_update_app_state');
    FFAppState().NavBar5 = true;
    FFAppState().update(() {});
  }
}

Future postInteractionSpecialScreen(
  BuildContext context, {
  required int? sequence,
  required int? answers,
}) async {
  ApiCallResponse? postInteraction;

  logFirebaseEvent('postInteractionSpecialScreen_backend_cal');
  postInteraction = await ApiAdereGroup.pOSTInteractionCall.call(
    id: sequence?.toString(),
    deviceId: FFAppState().deviceId,
    number: answers?.toString(),
    range: null,
    radio: null,
  );

  if ((postInteraction?.succeeded ?? true)) {
    if (ApiAdereGroup.pOSTInteractionCall.nextPath(
          (postInteraction?.jsonBody ?? ''),
        ) !=
        null) {
      logFirebaseEvent('postInteractionSpecialScreen_navigate_to');

      context.goNamed(
        'APP-SCREEN',
        queryParameters: {
          'sequence': serializeParam(
            sequence,
            ParamType.int,
          ),
        }.withoutNulls,
      );

      return;
    } else {
      return;
    }
  } else {
    logFirebaseEvent('postInteractionSpecialScreen_show_snack_');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Une erreur est survenue, veuillez réessayer',
          style: TextStyle(),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).secondary,
      ),
    );
    return;
  }
}

Future updateColorsAppState(
  BuildContext context, {
  required dynamic apiResponse,
}) async {
  logFirebaseEvent('updateColorsAppState_update_app_state');
  FFAppState().codecolor = getJsonField(
    apiResponse,
    r'''$.code_color''',
  ).toString().toString();
  FFAppState().codecolorlight = getJsonField(
    apiResponse,
    r'''$.code_color_light''',
  ).toString().toString();
  FFAppState().buttoncolor = getJsonField(
    apiResponse,
    r'''$.button_color''',
  ).toString().toString();
  FFAppState().buttoncolortext = getJsonField(
    apiResponse,
    r'''$.button_color_text''',
  ).toString().toString();
  FFAppState().bordercolor = getJsonField(
    apiResponse,
    r'''$.border_color''',
  ).toString().toString();
  FFAppState().colortext = getJsonField(
    apiResponse,
    r'''$.color_text''',
  ).toString().toString();
  FFAppState().update(() {});
}

Future blockedSequenceRedirect(
  BuildContext context, {
  required int? id,
  required bool? blockedornot,
  String? title,
}) async {
  if (blockedornot!) {
    logFirebaseEvent('blockedSequenceRedirect_alert_dialog');
    await showDialog(
      context: context,
      builder: (dialogContext) {
        return Dialog(
          elevation: 0,
          insetPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          alignment: AlignmentDirectional(0.0, 0.0)
              .resolve(Directionality.of(context)),
          child: PauseWidget(),
        );
      },
    );
  } else {
    logFirebaseEvent('blockedSequenceRedirect_navigate_to');

    context.pushNamed('ADERE_DASHBOARD');
  }
}

Future adereDashboardHeaderNav(
  BuildContext context, {
  required String? adereDashboardHeaderNavUpdate,
}) async {
  logFirebaseEvent('AdereDashboardHeaderNav_update_app_state');
  FFAppState().AdereDashboardHeaderNav1 = false;
  FFAppState().AdereDashboardHeaderNav2 = false;
  FFAppState().AdereDashboardHeaderNav3 = false;
  FFAppState().AdereDashboardHeaderNav4 = false;
  FFAppState().update(() {});
  if (adereDashboardHeaderNavUpdate == '1') {
    logFirebaseEvent('AdereDashboardHeaderNav_update_app_state');
    FFAppState().AdereDashboardHeaderNav1 = true;
  } else if (adereDashboardHeaderNavUpdate == '2') {
    logFirebaseEvent('AdereDashboardHeaderNav_update_app_state');
    FFAppState().AdereDashboardHeaderNav2 = true;
  } else if (adereDashboardHeaderNavUpdate == '3') {
    logFirebaseEvent('AdereDashboardHeaderNav_update_app_state');
    FFAppState().AdereDashboardHeaderNav3 = true;
  } else if (adereDashboardHeaderNavUpdate == '4') {
    logFirebaseEvent('AdereDashboardHeaderNav_update_app_state');
    FFAppState().AdereDashboardHeaderNav4 = true;
  }
}

Future adereDashboardBottomNav(
  BuildContext context, {
  required String? adereDashboardBottomNavUpdate,
}) async {
  logFirebaseEvent('AdereDashboardBottomNav_update_app_state');
  FFAppState().AdereDashboardBottomNav1 = false;
  FFAppState().AdereDashboardBottomNav2 = false;
  FFAppState().AdereDashboardBottomNav3 = false;
  FFAppState().AdereDashboardBottomNav4 = false;
  FFAppState().AdereDashboardBottomNav5 = false;
  if (adereDashboardBottomNavUpdate == '1') {
    logFirebaseEvent('AdereDashboardBottomNav_update_app_state');
    FFAppState().AdereDashboardBottomNav1 = true;
  } else if (adereDashboardBottomNavUpdate == '2') {
    logFirebaseEvent('AdereDashboardBottomNav_update_app_state');
    FFAppState().AdereDashboardBottomNav2 = true;
  } else if (adereDashboardBottomNavUpdate == '3') {
    logFirebaseEvent('AdereDashboardBottomNav_update_app_state');
    FFAppState().AdereDashboardBottomNav3 = true;
  } else if (adereDashboardBottomNavUpdate == '4') {
    logFirebaseEvent('AdereDashboardBottomNav_update_app_state');
    FFAppState().AdereDashboardBottomNav4 = true;
  } else if (adereDashboardBottomNavUpdate == '5') {
    logFirebaseEvent('AdereDashboardBottomNav_update_app_state');
    FFAppState().AdereDashboardBottomNav5 = true;
  }
}

Future adereDashboardHomeNav(
  BuildContext context, {
  required String? adereDashboardHomeNavUpdate,
}) async {
  logFirebaseEvent('AdereDashboardHomeNav_update_app_state');
  FFAppState().AdereDashboardHomeNav1 = false;
  FFAppState().AdereDashboardHomeNav2 = false;
  FFAppState().AdereDashboardHomeNav3 = false;
  FFAppState().AdereDashboardHomeNav4 = false;
  if (adereDashboardHomeNavUpdate == '1') {
    logFirebaseEvent('AdereDashboardHomeNav_update_app_state');
    FFAppState().AdereDashboardHomeNav1 = true;
  } else if (adereDashboardHomeNavUpdate == '2') {
    logFirebaseEvent('AdereDashboardHomeNav_update_app_state');
    FFAppState().AdereDashboardHomeNav2 = true;
  } else if (adereDashboardHomeNavUpdate == '3') {
    logFirebaseEvent('AdereDashboardHomeNav_update_app_state');
    FFAppState().AdereDashboardHomeNav3 = true;
  } else if (adereDashboardHomeNavUpdate == '4') {
    logFirebaseEvent('AdereDashboardHomeNav_update_app_state');
    FFAppState().AdereDashboardHomeNav4 = true;
  }
}

Future adereDashboardSaisiesNav(
  BuildContext context, {
  required String? adereDashboardSaisiesNavUpdate,
}) async {
  logFirebaseEvent('AdereDashboardSaisiesNav_update_app_stat');
  FFAppState().AdereDashboardSaisiesNav1 = false;
  FFAppState().AdereDashboardSaisiesNav2 = false;
  FFAppState().AdereDashboardSaisiesNav3 = false;
  FFAppState().update(() {});
  if (adereDashboardSaisiesNavUpdate == '1') {
    logFirebaseEvent('AdereDashboardSaisiesNav_update_app_stat');
    FFAppState().AdereDashboardSaisiesNav1 = true;
  } else if (adereDashboardSaisiesNavUpdate == '2') {
    logFirebaseEvent('AdereDashboardSaisiesNav_update_app_stat');
    FFAppState().AdereDashboardSaisiesNav2 = true;
  } else if (adereDashboardSaisiesNavUpdate == '3') {
    logFirebaseEvent('AdereDashboardSaisiesNav_update_app_stat');
    FFAppState().AdereDashboardSaisiesNav3 = true;
  }
}
