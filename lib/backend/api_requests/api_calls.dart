import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start API  ADERE Group Code

class ApiAdereGroup {
  static String getBaseUrl() => 'https://coaching.sandboxconcept.com';
  static Map<String, String> headers = {};
  static GETProgrammesCall gETProgrammesCall = GETProgrammesCall();
  static GETSimulateursCall gETSimulateursCall = GETSimulateursCall();
  static GETSimulateuridCall gETSimulateuridCall = GETSimulateuridCall();
  static GETProgrammeidCall gETProgrammeidCall = GETProgrammeidCall();
  static GETDailynewsbyidCall gETDailynewsbyidCall = GETDailynewsbyidCall();
  static GETRecommandationCall gETRecommandationCall = GETRecommandationCall();
  static GETInteractionCall gETInteractionCall = GETInteractionCall();
  static GETMessagesCall gETMessagesCall = GETMessagesCall();
  static ApiStepsCall apiStepsCall = ApiStepsCall();
  static ApiPhasesCall apiPhasesCall = ApiPhasesCall();
  static POSTInteractionCall pOSTInteractionCall = POSTInteractionCall();
  static POSTFlowresetCall pOSTFlowresetCall = POSTFlowresetCall();
  static POSTMessagesCall pOSTMessagesCall = POSTMessagesCall();
  static POSTInteractionCoachCall pOSTInteractionCoachCall =
      POSTInteractionCoachCall();
  static POSTSignupCall pOSTSignupCall = POSTSignupCall();
  static GETMeCall gETMeCall = GETMeCall();
  static POSTMeCall pOSTMeCall = POSTMeCall();
  static POSTMeMULTIPARTAVATARCall pOSTMeMULTIPARTAVATARCall =
      POSTMeMULTIPARTAVATARCall();
  static GETRewardsOffersCall gETRewardsOffersCall = GETRewardsOffersCall();
  static GETRewardsEarnsCall gETRewardsEarnsCall = GETRewardsEarnsCall();
  static GETAlertsCall gETAlertsCall = GETAlertsCall();
  static DELETEDeleteAccountCall dELETEDeleteAccountCall =
      DELETEDeleteAccountCall();
  static GETDailyplanCall gETDailyplanCall = GETDailyplanCall();
  static POSTDailyplanCall pOSTDailyplanCall = POSTDailyplanCall();
  static ChoiceCall choiceCall = ChoiceCall();
  static GETDailynewsCall gETDailynewsCall = GETDailynewsCall();
  static GETDailynewsCategoriesCall gETDailynewsCategoriesCall =
      GETDailynewsCategoriesCall();
  static GETDailynewsCategoriesBannersCall gETDailynewsCategoriesBannersCall =
      GETDailynewsCategoriesBannersCall();
  static GETProductsCall gETProductsCall = GETProductsCall();
  static GETProductCategoriesCall gETProductCategoriesCall =
      GETProductCategoriesCall();
  static GETProductsByCategoryCall gETProductsByCategoryCall =
      GETProductsByCategoryCall();
  static GETNewProductsCall gETNewProductsCall = GETNewProductsCall();
  static GETProductsSearchCall gETProductsSearchCall = GETProductsSearchCall();
  static POSTCoachCall pOSTCoachCall = POSTCoachCall();
  static POSTFavorisCall pOSTFavorisCall = POSTFavorisCall();
  static GETFavorisCall gETFavorisCall = GETFavorisCall();
  static POSTContactCall pOSTContactCall = POSTContactCall();
  static POSTBetaContactCall pOSTBetaContactCall = POSTBetaContactCall();
  static GETFoldersCall gETFoldersCall = GETFoldersCall();
  static POSTFileCall pOSTFileCall = POSTFileCall();
  static GETFilesCall gETFilesCall = GETFilesCall();
  static GETImportantFilesCall gETImportantFilesCall = GETImportantFilesCall();
  static POSTFolderCall pOSTFolderCall = POSTFolderCall();
  static PUTSwitchImportantCall pUTSwitchImportantCall =
      PUTSwitchImportantCall();
  static POSTSearchFileCall pOSTSearchFileCall = POSTSearchFileCall();
  static POSTSetMessagesAsViewedCall pOSTSetMessagesAsViewedCall =
      POSTSetMessagesAsViewedCall();
}

class GETProgrammesCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseToken = '',
    String? firebaseJwt = '',
    String? mode = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET /programmes',
      apiUrl: '${baseUrl}/api/programmes',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_token': firebaseToken,
        'firebase_jwt': firebaseJwt,
        'mode': mode,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? programmes(dynamic response) => getJsonField(
        response,
        r'''$.programmes''',
        true,
      ) as List?;
  List? id(dynamic response) => getJsonField(
        response,
        r'''$.programmes[:].id''',
        true,
      ) as List?;
  List? name(dynamic response) => getJsonField(
        response,
        r'''$.programmes[:].name''',
        true,
      ) as List?;
  List? category(dynamic response) => getJsonField(
        response,
        r'''$.programmes[:].category''',
        true,
      ) as List?;
  List? description(dynamic response) => getJsonField(
        response,
        r'''$.programmes[:].description''',
        true,
      ) as List?;
  List? image(dynamic response) => getJsonField(
        response,
        r'''$.programmes[:].image''',
        true,
      ) as List?;
}

class GETSimulateursCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseToken = '',
    String? firebaseJwt = '',
    String? type = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET /simulateurs',
      apiUrl: '${baseUrl}/api/simulateurs',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_token': firebaseToken,
        'firebase_jwt': firebaseJwt,
        'type': type,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETSimulateuridCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseToken = '',
    String? id = '',
    String? firebaseJwt = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET /simulateur/{id}',
      apiUrl: '${baseUrl}/api/simulateur/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_token': firebaseToken,
        'firebase_jwt': firebaseJwt,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETProgrammeidCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseToken = '',
    String? id = '',
    String? firebaseJwt = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET /programme/{id}',
      apiUrl: '${baseUrl}/api/programme/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_token': firebaseToken,
        'firebase_jwt': firebaseJwt,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETDailynewsbyidCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseJwt = '',
    String? firebaseToken = '',
    String? id = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET dailynewsbyid',
      apiUrl: '${baseUrl}/api/dailynews/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_jwt': firebaseJwt,
        'firebase_token': firebaseToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETRecommandationCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseJwt = '',
    String? firebaseToken = '',
    int? levelQty,
    int? primary,
    int? subLevelQty,
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET recommandation',
      apiUrl: '${baseUrl}/api/recommandation',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_jwt': firebaseJwt,
        'firebase_token': firebaseToken,
        'level_qty': levelQty,
        'primary': primary,
        'sub_level_qty': subLevelQty,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? firstdescription(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.reco_first.description''',
      ));
  String? firstimage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.reco_first.image''',
      ));
  String? firstname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.reco_first.name''',
      ));
  dynamic? recoobject(dynamic response) => getJsonField(
        response,
        r'''$.reco_first''',
      );
  List? recommendations(dynamic response) => getJsonField(
        response,
        r'''$.recommendations''',
        true,
      ) as List?;
  dynamic front(dynamic response) => getJsonField(
        response,
        r'''$.reco_first.front''',
      );
}

class GETInteractionCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseJwt = '',
    String? firebaseToken = '',
    String? id = '',
    String? mode = '',
    String? phase = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET /interaction',
      apiUrl: '${baseUrl}/api/interaction/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_jwt': firebaseJwt,
        'firebase_token': firebaseToken,
        'id': id,
        'mode': mode,
        'phase': phase,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? elements(dynamic response) => getJsonField(
        response,
        r'''$.screen.decoded_screen''',
        true,
      ) as List?;
  List<String>? layout(dynamic response) => (getJsonField(
        response,
        r'''$.screen.decoded_screen[:].layout''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? shorttexttitletext(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.screen.decoded_screen[:].attributes.short_text_title_text''',
      ));
  String? shorttexttitleimage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.screen.decoded_screen[:].attributes.short_text_title_image''',
      ));
  List? isQuestion(dynamic response) => getJsonField(
        response,
        r'''$.screen.decoded_screen[:].isQuestion''',
        true,
      ) as List?;
  List<bool>? isShortTextWithImage(dynamic response) => (getJsonField(
        response,
        r'''$.screen.decoded_screen[:].isShortTextWithImage''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  bool? isTechnique(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.isTechnique''',
      ));
  bool? isProgramme(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.isProgramme''',
      ));
  String? headertext(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.header_text''',
      ));
  String? headerimage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.header_image''',
      ));
  dynamic? screen(dynamic response) => getJsonField(
        response,
        r'''$.screen''',
      );
  dynamic? specialScreenOptions(dynamic response) => getJsonField(
        response,
        r'''$.screen.special_destination.options''',
      );
  bool? isSpecial(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.screen.is_special''',
      ));
  String? specialScreen(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.screen.special_destination.screen''',
      ));
  dynamic isQuestionWithImage(dynamic response) => getJsonField(
        response,
        r'''$.isQuestionWithImage''',
      );
}

class GETMessagesCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseJwt = '',
    String? firebaseToken = '',
    String? type = '',
    String? dailyplanMoment = '',
    String? dailyplanCategory = '',
    String? dailyplanDate = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET messages',
      apiUrl: '${baseUrl}/api/messages/${type}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_jwt': firebaseJwt,
        'firebase_token': firebaseToken,
        'type': type,
        'dailyplan_moment': dailyplanMoment,
        'dailyplan_category': dailyplanCategory,
        'dailyplan_date': dailyplanDate,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? elements(dynamic response) => getJsonField(
        response,
        r'''$.screen.decoded_screen''',
        true,
      ) as List?;
  List<String>? layout(dynamic response) => (getJsonField(
        response,
        r'''$.screen.decoded_screen[:].layout''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? shorttexttitletext(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.screen.decoded_screen[:].attributes.short_text_title_text''',
      ));
  String? shorttexttitleimage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.screen.decoded_screen[:].attributes.short_text_title_image''',
      ));
  List? isQuestion(dynamic response) => getJsonField(
        response,
        r'''$.screen.decoded_screen[:].isQuestion''',
        true,
      ) as List?;
  List<bool>? isShortTextWithImage(dynamic response) => (getJsonField(
        response,
        r'''$.screen.decoded_screen[:].isShortTextWithImage''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  bool? isTechnique(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.isTechnique''',
      ));
  bool? isProgramme(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.isProgramme''',
      ));
  String? headertext(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.header_text''',
      ));
  String? headerimage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.header_image''',
      ));
  dynamic? screen(dynamic response) => getJsonField(
        response,
        r'''$.screen''',
      );
  dynamic? specialScreenOptions(dynamic response) => getJsonField(
        response,
        r'''$.screen.special_destination.options''',
      );
  bool? isSpecial(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.screen.is_special''',
      ));
  String? specialScreen(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.screen.special_destination.screen''',
      ));
}

class ApiStepsCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseJwt = '',
    String? firebaseToken = '',
    String? id = '',
    String? phaseId = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'API STEPS',
      apiUrl: '${baseUrl}/api/steps/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_jwt': firebaseJwt,
        'firebase_token': firebaseToken,
        'id': id,
        'phase_id': phaseId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? steps(dynamic response) => getJsonField(
        response,
        r'''$.steps''',
        true,
      ) as List?;
}

class ApiPhasesCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseJwt = '',
    String? firebaseToken = '',
    String? id = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'API PHASES',
      apiUrl: '${baseUrl}/api/phases/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_jwt': firebaseJwt,
        'firebase_token': firebaseToken,
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? phases(dynamic response) => getJsonField(
        response,
        r'''$.phases''',
        true,
      ) as List?;
}

class POSTInteractionCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseJwt = '',
    String? firebaseToken = '',
    String? id = '',
    String? number = '',
    String? radio = '',
    String? range = '',
    List<String>? radioMultipleList,
    String? phase = '',
    String? dropdown = '',
    String? date = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();
    final radioMultiple = _serializeList(radioMultipleList);

    return ApiManager.instance.makeApiCall(
      callName: 'POST /interaction',
      apiUrl: '${baseUrl}/api/interaction/${id}',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_jwt': firebaseJwt,
        'firebase_token': firebaseToken,
        'id': id,
        'number': number,
        'radio': radio,
        'range': range,
        'radio_multiple': radioMultiple,
        'phase': phase,
        'dropdown': dropdown,
        'date': date,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic nextPath(dynamic response) => getJsonField(
        response,
        r'''$.next''',
      );
}

class POSTFlowresetCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseJwt = '',
    String? firebaseToken = '',
    String? id = '',
    int? last,
    int? section,
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'POST Flowreset',
      apiUrl: '${baseUrl}/api/interaction/flow-reset/${id}',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_jwt': firebaseJwt,
        'firebase_token': firebaseToken,
        'id': id,
        'last': last,
        'section': section,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic nextPath(dynamic response) => getJsonField(
        response,
        r'''$.next''',
      );
}

class POSTMessagesCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseJwt = '',
    String? firebaseToken = '',
    String? messageId = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'POST messages',
      apiUrl: '${baseUrl}/api/messages/mark/${messageId}',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_jwt': firebaseJwt,
        'firebase_token': firebaseToken,
        'message_id': messageId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic nextPath(dynamic response) => getJsonField(
        response,
        r'''$.next''',
      );
}

class POSTInteractionCoachCall {
  Future<ApiCallResponse> call({
    String? contentType = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POST /interaction/coach',
      apiUrl: '${baseUrl}/api/interaction/coach',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': '${contentType}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class POSTSignupCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'POST /signup',
      apiUrl: '${baseUrl}/api/signup',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'device_id': deviceId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class GETMeCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseJwt = '',
    String? firebaseToken = '',
    int? notificationEmail,
    int? notificationSms,
    int? notificationPush,
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET /me',
      apiUrl: '${baseUrl}/api/me',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_jwt': firebaseJwt,
        'firebase_token': firebaseToken,
        'notification_email': notificationEmail,
        'notification_sms': notificationSms,
        'notification_push': notificationPush,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic initialcompleted(dynamic response) => getJsonField(
        response,
        r'''$.initial_completed''',
      );
}

class POSTMeCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? deviceId = '',
    String? firebaseJwt = '',
    String? firebaseToken = '',
    String? firstname = '',
    String? lastname = '',
    String? gender = '',
    String? age = '',
    String? postcode = '',
    String? size = '',
    String? weight = '',
    String? mode = '',
    String? coachId = '',
    int? initialCompleted,
    String? avatar = '',
    String? birthdate = '',
    String? mobile = '',
    String? affiliationLink = '',
    String? dob = '',
    int? notificationPush,
    int? notificationEmail,
    int? notificationSms,
    String? mail = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'POST /me',
      apiUrl: '${baseUrl}/api/me',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'email': email,
        'device_id': deviceId,
        'firebase_jwt': firebaseJwt,
        'firebase_token': firebaseToken,
        'firstname': firstname,
        'lastname': lastname,
        'gender': gender,
        'age': age,
        'postcode': postcode,
        'size': size,
        'weight': weight,
        'mode': mode,
        'coach_id': coachId,
        'initial_completed': initialCompleted,
        'avatar': avatar,
        'birthdate': birthdate,
        'mobile': mobile,
        'affiliation_link': affiliationLink,
        'dob': dob,
        'notification_push': notificationPush,
        'notification_email': notificationEmail,
        'notification_sms': notificationSms,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class POSTMeMULTIPARTAVATARCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseJwt = '',
    String? firebaseToken = '',
    FFUploadedFile? avatar,
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'POST me MULTIPART AVATAR',
      apiUrl: '${baseUrl}/api/me_avatar',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_jwt': firebaseJwt,
        'firebase_token': firebaseToken,
        'avatar': avatar,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETRewardsOffersCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseJwt = '',
    String? firebaseToken = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET rewards offers',
      apiUrl: '${baseUrl}/api/rewards_offers',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_jwt': firebaseJwt,
        'firebase_token': firebaseToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETRewardsEarnsCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseJwt = '',
    String? firebaseToken = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET rewards earns',
      apiUrl: '${baseUrl}/api/rewards_earns',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_jwt': firebaseJwt,
        'firebase_token': firebaseToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETAlertsCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseToken = '',
    String? firebaseJwt = '',
    String? type = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET /alerts',
      apiUrl: '${baseUrl}/api/alerts',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_token': firebaseToken,
        'firebase_jwt': firebaseJwt,
        'type': type,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DELETEDeleteAccountCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseToken = '',
    String? firebaseJwt = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'DELETE /delete_account',
      apiUrl: '${baseUrl}/api/delete_account',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_token': firebaseToken,
        'firebase_jwt': firebaseJwt,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETDailyplanCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseToken = '',
    String? firebaseJwt = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET /dailyplan',
      apiUrl: '${baseUrl}/api/dailyplan',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_token': firebaseToken,
        'firebase_jwt': firebaseJwt,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class POSTDailyplanCall {
  Future<ApiCallResponse> call({
    String? contentType = '',
    String? deviceId = '',
    String? firebaseToken = '',
    String? firebaseJwt = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'POST /dailyplan',
      apiUrl: '${baseUrl}/api/dailyplan',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': '${contentType}',
      },
      params: {
        'device_id': deviceId,
        'firebase_token': firebaseToken,
        'firebase_jwt': firebaseJwt,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChoiceCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseToken = '',
    String? firebaseJwt = '',
    String? id = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'CHOICE',
      apiUrl: '${baseUrl}/api/choice',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_token': firebaseToken,
        'firebase_jwt': firebaseJwt,
        'id': id,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETDailynewsCall {
  Future<ApiCallResponse> call({
    String? content = '',
    String? deviceId = '',
    String? firebaseJwt = '',
    String? firebaseToken = '',
    int? id,
    String? image = '',
    String? shortDescription = '',
    String? title = '',
    String? type = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET /dailynews',
      apiUrl: '${baseUrl}/api/dailynews',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'content': content,
        'device_id': deviceId,
        'firebase_jwt': firebaseJwt,
        'firebase_token': firebaseToken,
        'id': id,
        'image': image,
        'short_description': shortDescription,
        'title': title,
        'type': type,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETDailynewsCategoriesCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseJwt = '',
    String? firebaseToken = '',
    String? id = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET dailynews categories',
      apiUrl: '${baseUrl}/api/dailynews_categories/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_jwt': firebaseJwt,
        'firebase_token': firebaseToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETDailynewsCategoriesBannersCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseJwt = '',
    String? firebaseToken = '',
    String? id = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET dailynews categories banners',
      apiUrl: '${baseUrl}/api/dailynews_categories_banners/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_jwt': firebaseJwt,
        'firebase_token': firebaseToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETProductsCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseJwt = '',
    String? firebaseToken = '',
    String? id = '',
    String? name = '',
    String? categoryId = '',
    String? shortDescription = '',
    String? description = '',
    double? price,
    String? image = '',
    String? link = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET products',
      apiUrl: '${baseUrl}/api/products',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_jwt': firebaseJwt,
        'firebase_token': firebaseToken,
        'id': id,
        'name': name,
        'category_id': categoryId,
        'short_description': shortDescription,
        'description': description,
        'price': price,
        'image': image,
        'link': link,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETProductCategoriesCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseJwt = '',
    String? firebaseToken = '',
    String? id = '',
    String? name = '',
    String? image = '',
    String? color = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET product categories',
      apiUrl: '${baseUrl}/api/product_categories',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_jwt': firebaseJwt,
        'firebase_token': firebaseToken,
        'id': id,
        'name': name,
        'image': image,
        'color': color,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETProductsByCategoryCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseJwt = '',
    String? firebaseToken = '',
    String? id = '',
    String? name = '',
    String? categoryId = '',
    String? shortDescription = '',
    String? description = '',
    String? price = '',
    String? image = '',
    String? link = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET products by category',
      apiUrl: '${baseUrl}/api/products_by_category/${categoryId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_jwt': firebaseJwt,
        'firebase_token': firebaseToken,
        'id': id,
        'name': name,
        'categoryId': categoryId,
        'short_description': shortDescription,
        'description': description,
        'price': price,
        'image': image,
        'link': link,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETNewProductsCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseJwt = '',
    String? firebaseToken = '',
    String? id = '',
    String? name = '',
    String? categoryId = '',
    String? shortDescription = '',
    String? description = '',
    double? price,
    String? image = '',
    String? link = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET new products',
      apiUrl: '${baseUrl}/api/new_products',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_jwt': firebaseJwt,
        'firebase_token': firebaseToken,
        'id': id,
        'name': name,
        'category_id': categoryId,
        'short_description': shortDescription,
        'description': description,
        'price': price,
        'image': image,
        'link': link,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETProductsSearchCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseJwt = '',
    String? firebaseToken = '',
    String? id = '',
    String? name = '',
    String? categoryId = '',
    String? shortDescription = '',
    String? description = '',
    double? price,
    String? image = '',
    String? link = '',
    String? search = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET products search',
      apiUrl: '${baseUrl}/api/products/search',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_jwt': firebaseJwt,
        'firebase_token': firebaseToken,
        'id': id,
        'name': name,
        'category_id': categoryId,
        'short_description': shortDescription,
        'description': description,
        'price': price,
        'image': image,
        'link': link,
        'search': search,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class POSTCoachCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseToken = '',
    String? firebaseJwt = '',
    String? query = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'POST /coach',
      apiUrl: '${baseUrl}/api/coach',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_token': firebaseToken,
        'firebase_jwt': firebaseJwt,
        'query': query,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class POSTFavorisCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseToken = '',
    String? id = '',
    String? firebaseJwt = '',
    String? type = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'POST /favoris',
      apiUrl: '${baseUrl}/api/favoris',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
        'firebase_token': firebaseToken,
        'device_id': deviceId,
        'firebase_jwt': firebaseJwt,
        'type': type,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETFavorisCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseToken = '',
    String? firebaseJwt = '',
    String? type = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET /favoris',
      apiUrl: '${baseUrl}/api/favoris',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_token': firebaseToken,
        'firebase_jwt': firebaseJwt,
        'type': type,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class POSTContactCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? email = '',
    String? firebaseJwt = '',
    String? firebaseToken = '',
    String? firsname = '',
    String? lastname = '',
    String? message = '',
    String? subject = '',
    bool? optin,
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'POST /contact',
      apiUrl: '${baseUrl}/api/contact',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'device_id': deviceId,
        'email': email,
        'firebase_jwt': firebaseJwt,
        'firebase_token': firebaseToken,
        'firsname': firsname,
        'lastname': lastname,
        'message': message,
        'subject': subject,
        'optin': optin,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class POSTBetaContactCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseJwt = '',
    String? firebaseToken = '',
    String? message = '',
    String? absolutePath = '',
    FFUploadedFile? media,
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'POST betaContact',
      apiUrl: '${baseUrl}/api/contact_beta',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_jwt': firebaseJwt,
        'firebase_token': firebaseToken,
        'message': message,
        'absolute_path': absolutePath,
        'media': media,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETFoldersCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseToken = '',
    String? firebaseJwt = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET folders',
      apiUrl: '${baseUrl}/api/folders',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_token': firebaseToken,
        'firebase_jwt': firebaseJwt,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? allData(dynamic response) => getJsonField(
        response,
        r'''$.folders''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.folders[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? names(dynamic response) => (getJsonField(
        response,
        r'''$.folders[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class POSTFileCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseToken = '',
    String? firebaseJwt = '',
    FFUploadedFile? file,
    String? name = '',
    String? date = '',
    String? folderId = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'POST file',
      apiUrl: '${baseUrl}/api/files/save_file',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'file': file,
        'name': name,
        'date': date,
        'folder_id': folderId,
        'device_id': deviceId,
        'firebase_token': firebaseToken,
        'firebase_jwt': firebaseJwt,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETFilesCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseToken = '',
    String? firebaseJwt = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET files',
      apiUrl: '${baseUrl}/api/files',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_token': firebaseToken,
        'firebase_jwt': firebaseJwt,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? all(dynamic response) => getJsonField(
        response,
        r'''$.files''',
        true,
      ) as List?;
  List<String>? allFolder(dynamic response) => (getJsonField(
        response,
        r'''$.files[:].folderName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? allFiles(dynamic response) => getJsonField(
        response,
        r'''$.files[:].files''',
        true,
      ) as List?;
}

class GETImportantFilesCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseToken = '',
    String? firebaseJwt = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET important files',
      apiUrl: '${baseUrl}/api/files/important',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_token': firebaseToken,
        'firebase_jwt': firebaseJwt,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.files[:].id''',
      );
  List? all(dynamic response) => getJsonField(
        response,
        r'''$.files''',
        true,
      ) as List?;
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.files[:].name''',
      );
  dynamic date(dynamic response) => getJsonField(
        response,
        r'''$.files[:].date''',
      );
  dynamic isImportant(dynamic response) => getJsonField(
        response,
        r'''$.files[:].is_important''',
      );
  dynamic folderId(dynamic response) => getJsonField(
        response,
        r'''$.files[:].folder_id''',
      );
}

class POSTFolderCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseToken = '',
    String? firebaseJwt = '',
    String? name = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'POST folder',
      apiUrl: '${baseUrl}/api/folders/create_folder',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_token': firebaseToken,
        'firebase_jwt': firebaseJwt,
        'name': name,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.folder.id''',
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.folder.name''',
      );
}

class PUTSwitchImportantCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseJwt = '',
    String? firebaseToken = '',
    int? fileId,
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'PUT switch important',
      apiUrl: '${baseUrl}/api/files/switch_important/${fileId}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_token': firebaseToken,
        'firebase_jwt': firebaseJwt,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class POSTSearchFileCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseToken = '',
    String? firebaseJwt = '',
    String? research = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'POST search file',
      apiUrl: '${baseUrl}/api/files/search_file',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_jwt': firebaseJwt,
        'firebase_token': firebaseToken,
        'research': research,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? allFiles(dynamic response) => getJsonField(
        response,
        r'''$.files''',
        true,
      ) as List?;
}

class POSTSetMessagesAsViewedCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? firebaseToken = '',
    String? firebaseJwt = '',
  }) async {
    final baseUrl = ApiAdereGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'POST setMessagesAsViewed',
      apiUrl: '${baseUrl}/api/messages/view_all',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'device_id': deviceId,
        'firebase_token': firebaseToken,
        'firebase_jwt': firebaseJwt,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End API  ADERE Group Code

class VidalImageCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? image,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'VIDAL IMAGE',
      apiUrl: 'https://coaching.sandboxconcept.com/api/vidal/detect-cis',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'image': image,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VidalSearchCall {
  static Future<ApiCallResponse> call({
    String? search = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Vidal Search',
      apiUrl: 'https://coaching.sandboxconcept.com/api/vidal/search',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'search': search,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
