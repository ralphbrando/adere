import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/backend/supabase/supabase.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.loggedIn
          ? AdereDashboardWidget()
          : AdereInscriptionWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? AdereDashboardWidget()
              : AdereInscriptionWidget(),
        ),
        FFRoute(
          name: 'APP-SCREEN',
          path: '/appScreen',
          builder: (context, params) => AppScreenWidget(
            keyComponents: params.getParam(
              'keyComponents',
              ParamType.int,
            ),
            sequence: params.getParam(
              'sequence',
              ParamType.int,
            ),
            phase: params.getParam(
              'phase',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'ADERE_CONNEXION',
          path: '/ADERE_CONNEXION',
          builder: (context, params) => AdereConnexionWidget(),
        ),
        FFRoute(
          name: 'ADERE_OTP',
          path: '/ADERE_OTP',
          builder: (context, params) => AdereOtpWidget(),
        ),
        FFRoute(
          name: 'ADERE_INSCRIPTION',
          path: '/ADERE_INSCRIPTION',
          builder: (context, params) => AdereInscriptionWidget(),
        ),
        FFRoute(
          name: 'ADERE_PROGRAMME_INITIAL',
          path: '/ADERE_PROGRAMME_INITIAL',
          builder: (context, params) => AdereProgrammeInitialWidget(),
        ),
        FFRoute(
          name: 'ADERE_PRESENTATION_GENERALE',
          path: '/ADERE_PRESENTATION_GENERALE',
          builder: (context, params) => AderePresentationGeneraleWidget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_01',
          path: '/ADERE_QUESTION_01',
          builder: (context, params) => AdereQuestion01Widget(),
        ),
        FFRoute(
          name: 'ADERE_ARMOIRE',
          path: '/ADERE_ARMOIRE',
          builder: (context, params) => AdereArmoireWidget(),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_01',
          path: '/ADERE_MEDICAMENT_ADD_01',
          builder: (context, params) => AdereMedicamentAdd01Widget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_02',
          path: '/ADERE_QUESTION_02',
          builder: (context, params) => AdereQuestion02Widget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_03',
          path: '/ADERE_QUESTION_03',
          builder: (context, params) => AdereQuestion03Widget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_04',
          path: '/ADERE_QUESTION_04',
          builder: (context, params) => AdereQuestion04Widget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_05',
          path: '/ADERE_QUESTION_05',
          builder: (context, params) => AdereQuestion05Widget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_06',
          path: '/ADERE_QUESTION_06',
          builder: (context, params) => AdereQuestion06Widget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_07',
          path: '/ADERE_QUESTION_07',
          builder: (context, params) => AdereQuestion07Widget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_08',
          path: '/ADERE_QUESTION_08',
          builder: (context, params) => AdereQuestion08Widget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_09',
          path: '/ADERE_QUESTION_09',
          builder: (context, params) => AdereQuestion09Widget(),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_02',
          path: '/ADERE_MEDICAMENT_ADD_02',
          builder: (context, params) => AdereMedicamentAdd02Widget(
            body: params.getParam(
              'body',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_10',
          path: '/ADERE_MEDICAMENT_ADD_10',
          builder: (context, params) => AdereMedicamentAdd10Widget(
            body: params.getParam(
              'body',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD',
          path: '/ADERE_DASHBOARD',
          builder: (context, params) => AdereDashboardWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MON_SUIVI',
          path: '/ADERE_DASHBOARD_MON_SUIVI',
          builder: (context, params) => AdereDashboardMonSuiviWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MES_ALERTES',
          path: '/ADERE_DASHBOARD_MES_ALERTES',
          builder: (context, params) => AdereDashboardMesAlertesWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MA_MALADIE',
          path: '/ADERE_DASHBOARD_MA_MALADIE',
          builder: (context, params) => AdereDashboardMaMaladieWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_CONNAISSANCES',
          path: '/ADERE_DASHBOARD_CONNAISSANCES',
          builder: (context, params) => AdereDashboardConnaissancesWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_SAISIES_M0',
          path: '/ADERE_DASHBOARD_SAISIES_M0',
          builder: (context, params) => AdereDashboardSaisiesM0Widget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_SAISIES_S1',
          path: '/ADERE_DASHBOARD_SAISIES_S1',
          builder: (context, params) => AdereDashboardSaisiesS1Widget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_SAISIES_S2',
          path: '/ADERE_DASHBOARD_SAISIES_S2',
          builder: (context, params) => AdereDashboardSaisiesS2Widget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_SAISIES_S3',
          path: '/ADERE_DASHBOARD_SAISIES_S3',
          builder: (context, params) => AdereDashboardSaisiesS3Widget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_SAISIES_S4',
          path: '/ADERE_DASHBOARD_SAISIES_S4',
          builder: (context, params) => AdereDashboardSaisiesS4Widget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_SAISIES_MES1',
          path: '/ADERE_DASHBOARD_SAISIES_MES1',
          builder: (context, params) => AdereDashboardSaisiesMes1Widget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_SAISIES_MES2',
          path: '/ADERE_DASHBOARD_SAISIES_MES2',
          builder: (context, params) => AdereDashboardSaisiesMes2Widget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_SAISIES_MES3',
          path: '/ADERE_DASHBOARD_SAISIES_MES3',
          builder: (context, params) => AdereDashboardSaisiesMes3Widget(
            param: params.getParam(
              'param',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_SAISIES_MES4',
          path: '/ADERE_DASHBOARD_SAISIES_MES4',
          builder: (context, params) => AdereDashboardSaisiesMes4Widget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MON_MEDICAMENT',
          path: '/ADERE_DASHBOARD_MON_MEDICAMENT',
          builder: (context, params) => AdereDashboardMonMedicamentWidget(
            data: params.getParam<UserPackagesRow>(
              'data',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_GESTION_MEDICAMENT_2',
          path: '/ADERE_DASHBOARD_GESTION_MEDICAMENT_2',
          builder: (context, params) => AdereDashboardGestionMedicament2Widget(
            package: params.getParam(
              'package',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_GESTION_MEDICAMENT_1',
          path: '/ADERE_DASHBOARD_GESTION_MEDICAMENT_1',
          builder: (context, params) => AdereDashboardGestionMedicament1Widget(
            userpackage: params.getParam(
              'userpackage',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'ADERE_ARMOIRE_DEV',
          path: '/ADERE_ARMOIRE_DEV',
          builder: (context, params) => AdereArmoireDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_01_DEV',
          path: '/ADERE_MEDICAMENT_ADD_01_DEV',
          builder: (context, params) => AdereMedicamentAdd01DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_02_DEV',
          path: '/ADERE_MEDICAMENT_ADD_02_DEV',
          builder: (context, params) => AdereMedicamentAdd02DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_10_DEV',
          path: '/ADERE_MEDICAMENT_ADD_10_DEV',
          builder: (context, params) => AdereMedicamentAdd10DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_CONNEXION_DEV',
          path: '/ADERE_CONNEXION_DEV',
          builder: (context, params) => AdereConnexionDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_INSCRIPTION_DEV',
          path: '/ADERE_INSCRIPTION_DEV',
          builder: (context, params) => AdereInscriptionDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_OTP_DEV',
          path: '/ADERE_OTP_DEV',
          builder: (context, params) => AdereOtpDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_PROGRAMME_INITIAL_DEV',
          path: '/ADERE_PROGRAMME_INITIAL_DEV',
          builder: (context, params) => AdereProgrammeInitialDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_01_DEV',
          path: '/ADERE_QUESTION_01_DEV',
          builder: (context, params) => AdereQuestion01DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_02_DEV',
          path: '/ADERE_QUESTION_02_DEV',
          builder: (context, params) => AdereQuestion02DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_03_DEV',
          path: '/ADERE_QUESTION_03_DEV',
          builder: (context, params) => AdereQuestion03DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_04_DEV',
          path: '/ADERE_QUESTION_04_DEV',
          builder: (context, params) => AdereQuestion04DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_05_DEV',
          path: '/ADERE_QUESTION_05_DEV',
          builder: (context, params) => AdereQuestion05DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_06_DEV',
          path: '/ADERE_QUESTION_06_DEV',
          builder: (context, params) => AdereQuestion06DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_07_DEV',
          path: '/ADERE_QUESTION_07_DEV',
          builder: (context, params) => AdereQuestion07DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_08_DEV',
          path: '/ADERE_QUESTION_08_DEV',
          builder: (context, params) => AdereQuestion08DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_09_DEV',
          path: '/ADERE_QUESTION_09_DEV',
          builder: (context, params) => AdereQuestion09DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_DEV',
          path: '/ADERE_DASHBOARD_DEV',
          builder: (context, params) => AdereDashboardDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MA_MALADIE_DEV',
          path: '/ADERE_DASHBOARD_MA_MALADIE_DEV',
          builder: (context, params) => AdereDashboardMaMaladieDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MES_ALERTES_DEV',
          path: '/ADERE_DASHBOARD_MES_ALERTES_DEV',
          builder: (context, params) => AdereDashboardMesAlertesDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MON_ETAT_DEV',
          path: '/ADERE_DASHBOARD_MON_ETAT_DEV',
          builder: (context, params) => AdereDashboardMonEtatDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MES_SERVICES_DEV',
          path: '/ADERE_DASHBOARD_MES_SERVICES_DEV',
          builder: (context, params) => AdereDashboardMesServicesDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_CONNAISSANCES_DEV',
          path: '/ADERE_DASHBOARD_CONNAISSANCES_DEV',
          builder: (context, params) => AdereDashboardConnaissancesDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_ARMOIRE_DEV',
          path: '/ADERE_DASHBOARD_ARMOIRE_DEV',
          builder: (context, params) => AdereDashboardArmoireDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MEDICAMENT_ADD_1_DEV',
          path: '/ADERE_DASHBOARD_MEDICAMENT_ADD_1_DEV',
          builder: (context, params) => AdereDashboardMedicamentAdd1DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MEDICAMENT_ADD_2_DEV',
          path: '/ADERE_DASHBOARD_MEDICAMENT_ADD_2_DEV',
          builder: (context, params) => AdereDashboardMedicamentAdd2DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MEDICAMENT_ADD_3_DEV',
          path: '/ADERE_DASHBOARD_MEDICAMENT_ADD_3_DEV',
          builder: (context, params) => AdereDashboardMedicamentAdd3DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_GESTION_MEDICAMENT_1_DEV',
          path: '/ADERE_DASHBOARD_GESTION_MEDICAMENT_1_DEV',
          builder: (context, params) =>
              AdereDashboardGestionMedicament1DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_GESTION_MEDICAMENT_2_DEV',
          path: '/ADERE_DASHBOARD_GESTION_MEDICAMENT_2_DEV',
          builder: (context, params) =>
              AdereDashboardGestionMedicament2DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_GESTION_RAPPELS_1_DEV',
          path: '/ADERE_DASHBOARD_GESTION_RAPPELS_1_DEV',
          builder: (context, params) =>
              AdereDashboardGestionRappels1DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_GESTION_RAPPELS_2_DEV',
          path: '/ADERE_DASHBOARD_GESTION_RAPPELS_2_DEV',
          builder: (context, params) =>
              AdereDashboardGestionRappels2DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_GESTION_RAPPELS_3_DEV',
          path: '/ADERE_DASHBOARD_GESTION_RAPPELS_3_DEV',
          builder: (context, params) =>
              AdereDashboardGestionRappels3DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_GESTION_RAPPELS_4_DEV',
          path: '/ADERE_DASHBOARD_GESTION_RAPPELS_4_DEV',
          builder: (context, params) =>
              AdereDashboardGestionRappels4DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MON_MEDICAMENT_DEV',
          path: '/ADERE_DASHBOARD_MON_MEDICAMENT_DEV',
          builder: (context, params) => AdereDashboardMonMedicamentDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_SAISIES_M0_DEV',
          path: '/ADERE_DASHBOARD_SAISIES_M0_DEV',
          builder: (context, params) => AdereDashboardSaisiesM0DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_SAISIES_M1_DEV',
          path: '/ADERE_DASHBOARD_SAISIES_M1_DEV',
          builder: (context, params) => AdereDashboardSaisiesM1DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_SAISIES_M2_DEV',
          path: '/ADERE_DASHBOARD_SAISIES_M2_DEV',
          builder: (context, params) => AdereDashboardSaisiesM2DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_SAISIES_M3_DEV',
          path: '/ADERE_DASHBOARD_SAISIES_M3_DEV',
          builder: (context, params) => AdereDashboardSaisiesM3DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_SAISIES_M4_DEV',
          path: '/ADERE_DASHBOARD_SAISIES_M4_DEV',
          builder: (context, params) => AdereDashboardSaisiesM4DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_SAISIES_MES1_DEV',
          path: '/ADERE_DASHBOARD_SAISIES_MES1_DEV',
          builder: (context, params) => AdereDashboardSaisiesMes1DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_SAISIES_MES2_DEV',
          path: '/ADERE_DASHBOARD_SAISIES_MES2_DEV',
          builder: (context, params) => AdereDashboardSaisiesMes2DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_SAISIES_MES3_DEV',
          path: '/ADERE_DASHBOARD_SAISIES_MES3_DEV',
          builder: (context, params) => AdereDashboardSaisiesMes3DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_SAISIES_MES4_DEV',
          path: '/ADERE_DASHBOARD_SAISIES_MES4_DEV',
          builder: (context, params) => AdereDashboardSaisiesMes4DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_SAISIES_MES5_DEV',
          path: '/ADERE_DASHBOARD_SAISIES_MES5_DEV',
          builder: (context, params) => AdereDashboardSaisiesMes5DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_SAISIES_S1_DEV',
          path: '/ADERE_DASHBOARD_SAISIES_S1_DEV',
          builder: (context, params) => AdereDashboardSaisiesS1DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_SAISIES_S2_DEV',
          path: '/ADERE_DASHBOARD_SAISIES_S2_DEV',
          builder: (context, params) => AdereDashboardSaisiesS2DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_SAISIES_S3_DEV',
          path: '/ADERE_DASHBOARD_SAISIES_S3_DEV',
          builder: (context, params) => AdereDashboardSaisiesS3DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_SAISIES_S4_DEV',
          path: '/ADERE_DASHBOARD_SAISIES_S4_DEV',
          builder: (context, params) => AdereDashboardSaisiesS4DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_SAISIES_S5_DEV',
          path: '/ADERE_DASHBOARD_SAISIES_S5_DEV',
          builder: (context, params) => AdereDashboardSaisiesS5DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_PRESENTATION_AUTRES_SERVICES_1_DEV',
          path: '/ADERE_PRESENTATION_AUTRES_SERVICES_1_DEV',
          builder: (context, params) =>
              AderePresentationAutresServices1DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_ABONNEMENT_DEV',
          path: '/ADERE_ABONNEMENT_DEV',
          builder: (context, params) => AdereAbonnementDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_ABONNEMENT',
          path: '/ADERE_ABONNEMENT',
          builder: (context, params) => AdereAbonnementWidget(),
        ),
        FFRoute(
          name: 'ADERE_PRESENTATION_DASHBOARD_1_DEV',
          path: '/ADERE_PRESENTATION_DASHBOARD_1_DEV',
          builder: (context, params) => AderePresentationDashboard1DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_PASSWORD_LINK_DEV',
          path: '/ADERE_PASSWORD_LINK_DEV',
          builder: (context, params) => AderePasswordLinkDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_PASSWORD_LINK',
          path: '/ADERE_PASSWORD_LINK',
          builder: (context, params) => AderePasswordLinkWidget(),
        ),
        FFRoute(
          name: 'ADERE_PASSWORD_RESET_DEV',
          path: '/ADERE_PASSWORD_RESET_DEV',
          builder: (context, params) => AderePasswordResetDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_PASSWORD_RESET',
          path: '/ADERE_PASSWORD_RESET',
          builder: (context, params) => AderePasswordResetWidget(),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_SEARCH',
          path: '/ADERE_MEDICAMENT_SEARCH',
          builder: (context, params) => AdereMedicamentSearchWidget(),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_SEARCH_DEV',
          path: '/ADERE_MEDICAMENT_SEARCH_DEV',
          builder: (context, params) => AdereMedicamentSearchDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_C01_DEV',
          path: '/ADERE_QUESTION_C01_DEV',
          builder: (context, params) => AdereQuestionC01DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_C02_DEV',
          path: '/ADERE_QUESTION_C02_DEV',
          builder: (context, params) => AdereQuestionC02DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_C03_DEV',
          path: '/ADERE_QUESTION_C03_DEV',
          builder: (context, params) => AdereQuestionC03DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_C04_DEV',
          path: '/ADERE_QUESTION_C04_DEV',
          builder: (context, params) => AdereQuestionC04DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_C05_DEV',
          path: '/ADERE_QUESTION_C05_DEV',
          builder: (context, params) => AdereQuestionC05DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_C06_DEV',
          path: '/ADERE_QUESTION_C06_DEV',
          builder: (context, params) => AdereQuestionC06DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_C07_DEV',
          path: '/ADERE_QUESTION_C07_DEV',
          builder: (context, params) => AdereQuestionC07DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_C08_DEV',
          path: '/ADERE_QUESTION_C08_DEV',
          builder: (context, params) => AdereQuestionC08DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_C09_DEV',
          path: '/ADERE_QUESTION_C09_DEV',
          builder: (context, params) => AdereQuestionC09DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_C10_DEV',
          path: '/ADERE_QUESTION_C10_DEV',
          builder: (context, params) => AdereQuestionC10DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_10',
          path: '/ADERE_QUESTION_10',
          builder: (context, params) => AdereQuestion10Widget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_11',
          path: '/ADERE_QUESTION_11',
          builder: (context, params) => AdereQuestion11Widget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_10_DEV',
          path: '/ADERE_QUESTION_10_DEV',
          builder: (context, params) => AdereQuestion10DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_QUESTION_11_DEV',
          path: '/ADERE_QUESTION_11_DEV',
          builder: (context, params) => AdereQuestion11DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MENU',
          path: '/ADERE_DASHBOARD_MENU',
          builder: (context, params) => AdereDashboardMenuWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MON_COMPTE',
          path: '/ADERE_DASHBOARD_MON_COMPTE',
          builder: (context, params) => AdereDashboardMonCompteWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MENU_DEV',
          path: '/ADERE_DASHBOARD_MENU_DEV',
          builder: (context, params) => AdereDashboardMenuDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MES_NOTIFICATIONS_DEV',
          path: '/ADERE_DASHBOARD_MES_NOTIFICATIONS_DEV',
          builder: (context, params) =>
              AdereDashboardMesNotificationsDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MON_COMPTE_DEV',
          path: '/ADERE_DASHBOARD_MON_COMPTE_DEV',
          builder: (context, params) => AdereDashboardMonCompteDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_PHASES',
          path: '/ADERE_DASHBOARD_PHASES',
          builder: (context, params) => AdereDashboardPhasesWidget(
            sequence: params.getParam(
              'sequence',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_STEPS',
          path: '/ADERE_DASHBOARD_STEPS',
          builder: (context, params) => AdereDashboardStepsWidget(
            sequence: params.getParam(
              'sequence',
              ParamType.int,
            ),
            phase: params.getParam(
              'phase',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_PHASES_DEV',
          path: '/ADERE_DASHBOARD_PHASES_DEV',
          builder: (context, params) => AdereDashboardPhasesDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_STEPS_DEV',
          path: '/ADERE_DASHBOARD_STEPS_DEV',
          builder: (context, params) => AdereDashboardStepsDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_CONNAISSANCES_LISTE',
          path: '/ADERE_DASHBOARD_CONNAISSANCES_LISTE',
          builder: (context, params) => AdereDashboardConnaissancesListeWidget(
            titrecat: params.getParam(
              'titrecat',
              ParamType.String,
            ),
            catid: params.getParam(
              'catid',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_CONNAISSANCES_ARTICLE',
          path: '/ADERE_DASHBOARD_CONNAISSANCES_ARTICLE',
          builder: (context, params) =>
              AdereDashboardConnaissancesArticleWidget(
            idart: params.getParam(
              'idart',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_CONNAISSANCES_LISTE_DEV',
          path: '/ADERE_DASHBOARD_CONNAISSANCES_LISTE_DEV',
          builder: (context, params) =>
              AdereDashboardConnaissancesListeDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_CONNAISSANCES_ARTICLE_DEV',
          path: '/ADERE_DASHBOARD_CONNAISSANCES_ARTICLE_DEV',
          builder: (context, params) =>
              AdereDashboardConnaissancesArticleDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_04_DEV',
          path: '/ADERE_MEDICAMENT_ADD_04_DEV',
          builder: (context, params) => AdereMedicamentAdd04DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_05_P1_A_DEV',
          path: '/ADERE_MEDICAMENT_ADD_05_P1_A_DEV',
          builder: (context, params) => AdereMedicamentAdd05P1ADevWidget(),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_05_P1_B_DEV',
          path: '/ADERE_MEDICAMENT_ADD_05_P1_B_DEV',
          builder: (context, params) => AdereMedicamentAdd05P1BDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_03_DEV',
          path: '/ADERE_MEDICAMENT_ADD_03_DEV',
          builder: (context, params) => AdereMedicamentAdd03DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_05_P1_C_DEV',
          path: '/ADERE_MEDICAMENT_ADD_05_P1_C_DEV',
          builder: (context, params) => AdereMedicamentAdd05P1CDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_07_DEV',
          path: '/ADERE_MEDICAMENT_ADD_07_DEV',
          builder: (context, params) => AdereMedicamentAdd07DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_09_DEV',
          path: '/ADERE_MEDICAMENT_ADD_09_DEV',
          builder: (context, params) => AdereMedicamentAdd09DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_08_DEV',
          path: '/ADERE_MEDICAMENT_ADD_08_DEV',
          builder: (context, params) => AdereMedicamentAdd08DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_05_P2_B_DEV',
          path: '/ADERE_MEDICAMENT_ADD_05_P2_B_DEV',
          builder: (context, params) => AdereMedicamentAdd05P2BDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_06_DEV',
          path: '/ADERE_MEDICAMENT_ADD_06_DEV',
          builder: (context, params) => AdereMedicamentAdd06DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_05_P2_A_DEV',
          path: '/ADERE_MEDICAMENT_ADD_05_P2_A_DEV',
          builder: (context, params) => AdereMedicamentAdd05P2ADevWidget(),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_03',
          path: '/ADERE_MEDICAMENT_ADD_03',
          builder: (context, params) => AdereMedicamentAdd03Widget(
            body: params.getParam(
              'body',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_04',
          path: '/ADERE_MEDICAMENT_ADD_04',
          builder: (context, params) => AdereMedicamentAdd04Widget(
            body: params.getParam(
              'body',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_05_P1_A',
          path: '/ADERE_MEDICAMENT_ADD_05_P1_A',
          builder: (context, params) => AdereMedicamentAdd05P1AWidget(
            body: params.getParam(
              'body',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_05_P1_B',
          path: '/ADERE_MEDICAMENT_ADD_05_P1_B',
          builder: (context, params) => AdereMedicamentAdd05P1BWidget(
            body: params.getParam(
              'body',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_05_P1_C',
          path: '/ADERE_MEDICAMENT_ADD_05_P1_C',
          builder: (context, params) => AdereMedicamentAdd05P1CWidget(
            body: params.getParam(
              'body',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_05_P2_A',
          path: '/ADERE_MEDICAMENT_ADD_05_P2_A',
          builder: (context, params) => AdereMedicamentAdd05P2AWidget(
            body: params.getParam(
              'body',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_05_P2_B',
          path: '/ADERE_MEDICAMENT_ADD_05_P2_B',
          builder: (context, params) => AdereMedicamentAdd05P2BWidget(
            body: params.getParam(
              'body',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_06',
          path: '/ADERE_MEDICAMENT_ADD_06',
          builder: (context, params) => AdereMedicamentAdd06Widget(
            body: params.getParam(
              'body',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_07',
          path: '/ADERE_MEDICAMENT_ADD_07',
          builder: (context, params) => AdereMedicamentAdd07Widget(
            body: params.getParam(
              'body',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_08',
          path: '/ADERE_MEDICAMENT_ADD_08',
          builder: (context, params) => AdereMedicamentAdd08Widget(
            body: params.getParam(
              'body',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'ADERE_MEDICAMENT_ADD_09',
          path: '/ADERE_MEDICAMENT_ADD_09',
          builder: (context, params) => AdereMedicamentAdd09Widget(
            body: params.getParam(
              'body',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'ADERE_PRESENTATION_QUESTIONNAIRE_INITIAL',
          path: '/ADERE_PRESENTATION_QUESTIONNAIRE_INITIAL',
          builder: (context, params) =>
              AderePresentationQuestionnaireInitialWidget(),
        ),
        FFRoute(
          name: 'ADERE_PRESENTATION_MEDICAMENT_SAISIE_1',
          path: '/ADERE_PRESENTATION_MEDICAMENT_SAISIE_1',
          builder: (context, params) =>
              AderePresentationMedicamentSaisie1Widget(),
        ),
        FFRoute(
          name: 'ADERE_PRESENTATION_MEDICAMENT_SAISIE_2',
          path: '/ADERE_PRESENTATION_MEDICAMENT_SAISIE_2',
          builder: (context, params) =>
              AderePresentationMedicamentSaisie2Widget(),
        ),
        FFRoute(
          name: 'ADERE_PRESENTATION_MEDICAMENT',
          path: '/ADERE_PRESENTATION_MEDICAMENT',
          builder: (context, params) => AderePresentationMedicamentWidget(),
        ),
        FFRoute(
          name: 'ADERE_PRESENTATION_MEDICAMENT_SAISIE_RESULTAT',
          path: '/ADERE_PRESENTATION_MEDICAMENT_SAISIE_RESULTAT',
          builder: (context, params) =>
              AderePresentationMedicamentSaisieResultatWidget(),
        ),
        FFRoute(
          name: 'ADERE_PRESENTATION_1_DEV',
          path: '/ADERE_PRESENTATION_1_DEV',
          builder: (context, params) => AderePresentation1DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_PRESENTATION_2_DEV',
          path: '/ADERE_PRESENTATION_2_DEV',
          builder: (context, params) => AderePresentation2DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_PRESENTATION_3_DEV',
          path: '/ADERE_PRESENTATION_3_DEV',
          builder: (context, params) => AderePresentation3DevWidget(),
        ),
        FFRoute(
          name: 'ADERE_PRESENTATION_SAISIE_DEV',
          path: '/ADERE_PRESENTATION_SAISIE_DEV',
          builder: (context, params) => AderePresentationSaisieDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_PRESENTATION_SAISIE_RESULTAT_DEV',
          path: '/ADERE_PRESENTATION_SAISIE_RESULTAT_DEV',
          builder: (context, params) =>
              AderePresentationSaisieResultatDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_PRESENTATION_QUESTIONNAIRE_DEV',
          path: '/ADERE_PRESENTATION_QUESTIONNAIRE_DEV',
          builder: (context, params) =>
              AderePresentationQuestionnaireDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_PRESENTATION_DASHBOARD',
          path: '/ADERE_PRESENTATION_DASHBOARD',
          builder: (context, params) => AderePresentationDashboardWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MES_ALERTES_ADD',
          path: '/ADERE_DASHBOARD_MES_ALERTES_ADD',
          builder: (context, params) => AdereDashboardMesAlertesAddWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MES_INFORMATIONS',
          path: '/ADERE_DASHBOARD_MES_INFORMATIONS',
          builder: (context, params) => AdereDashboardMesInformationsWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MES_INFORMATIONS_DEV',
          path: '/ADERE_DASHBOARD_MES_INFORMATIONS_DEV',
          builder: (context, params) =>
              AdereDashboardMesInformationsDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MES_INFORMATIONS_ARTICLE',
          path: '/ADERE_DASHBOARD_MES_INFORMATIONS_ARTICLE',
          builder: (context, params) =>
              AdereDashboardMesInformationsArticleWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MES_INFORMATIONS_ARTICLE_DEV',
          path: '/ADERE_DASHBOARD_MES_INFORMATIONS_ARTICLE_DEV',
          builder: (context, params) =>
              AdereDashboardMesInformationsArticleDevWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MES_SERVICES',
          path: '/ADERE_DASHBOARD_MES_SERVICES',
          builder: (context, params) => AdereDashboardMesServicesWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MON_TRAITEMENT',
          path: '/ADERE_DASHBOARD_MON_TRAITEMENT',
          builder: (context, params) => AdereDashboardMonTraitementWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_REWARDS',
          path: '/ADERE_DASHBOARD_REWARDS',
          builder: (context, params) => AdereDashboardRewardsWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MARKETPLACE',
          path: '/ADERE_DASHBOARD_MARKETPLACE',
          builder: (context, params) => AdereDashboardMarketplaceWidget(),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MARKETPLACE_SEARCH',
          path: '/ADERE_DASHBOARD_MARKETPLACE_SEARCH',
          builder: (context, params) => AdereDashboardMarketplaceSearchWidget(
            search: params.getParam(
              'search',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'ADERE_DASHBOARD_MARKETPLACE_CATEGORIES',
          path: '/ADERE_DASHBOARD_MARKETPLACE_CATEGORIES',
          builder: (context, params) =>
              AdereDashboardMarketplaceCategoriesWidget(
            productsByCategory: params.getParam(
              'productsByCategory',
              ParamType.int,
            ),
            categoryName: params.getParam(
              'categoryName',
              ParamType.String,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/ADERE_INSCRIPTION';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
