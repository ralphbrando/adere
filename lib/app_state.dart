import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _deviceId = await secureStorage.getString('ff_deviceId') ?? _deviceId;
    });
    await _safeInitAsync(() async {
      _coach = await secureStorage.getInt('ff_coach') ?? _coach;
    });
    await _safeInitAsync(() async {
      _preventionFolderAlreadyVisit =
          await secureStorage.getBool('ff_preventionFolderAlreadyVisit') ??
              _preventionFolderAlreadyVisit;
    });
    await _safeInitAsync(() async {
      _welcomeString =
          await secureStorage.getString('ff_welcomeString') ?? _welcomeString;
    });
    await _safeInitAsync(() async {
      _affiliationlink = await secureStorage.getString('ff_affiliationlink') ??
          _affiliationlink;
    });
    await _safeInitAsync(() async {
      _sidebarFirstname =
          await secureStorage.getString('ff_sidebarFirstname') ??
              _sidebarFirstname;
    });
    await _safeInitAsync(() async {
      _sidebarLastname = await secureStorage.getString('ff_sidebarLastname') ??
          _sidebarLastname;
    });
    await _safeInitAsync(() async {
      _sidebarAvatar =
          await secureStorage.getString('ff_sidebarAvatar') ?? _sidebarAvatar;
    });
    await _safeInitAsync(() async {
      _sidebarGender =
          await secureStorage.getString('ff_sidebarGender') ?? _sidebarGender;
    });
    await _safeInitAsync(() async {
      _sidebarEmail =
          await secureStorage.getString('ff_sidebarEmail') ?? _sidebarEmail;
    });
    await _safeInitAsync(() async {
      _sidebarAge =
          await secureStorage.getString('ff_sidebarAge') ?? _sidebarAge;
    });
    await _safeInitAsync(() async {
      _sidebarWeight =
          await secureStorage.getString('ff_sidebarWeight') ?? _sidebarWeight;
    });
    await _safeInitAsync(() async {
      _sidebarMobile =
          await secureStorage.getString('ff_sidebarMobile') ?? _sidebarMobile;
    });
    await _safeInitAsync(() async {
      _isTrial = await secureStorage.getString('ff_isTrial') ?? _isTrial;
    });
    await _safeInitAsync(() async {
      _isNotTrial =
          await secureStorage.getString('ff_isNotTrial') ?? _isNotTrial;
    });
    await _safeInitAsync(() async {
      _status = await secureStorage.getString('ff_status') ?? _status;
    });
    await _safeInitAsync(() async {
      _scoring = await secureStorage.getDouble('ff_scoring') ?? _scoring;
    });
    await _safeInitAsync(() async {
      _coachpicture =
          await secureStorage.getString('ff_coachpicture') ?? _coachpicture;
    });
    await _safeInitAsync(() async {
      _rewardscore =
          await secureStorage.getInt('ff_rewardscore') ?? _rewardscore;
    });
    await _safeInitAsync(() async {
      _score = await secureStorage.getInt('ff_score') ?? _score;
    });
    await _safeInitAsync(() async {
      _affiliationCode = await secureStorage.getString('ff_affiliationCode') ??
          _affiliationCode;
    });
    await _safeInitAsync(() async {
      _affiliationQty =
          await secureStorage.getString('ff_affiliationQty') ?? _affiliationQty;
    });
    await _safeInitAsync(() async {
      _affiliationQtyDevided =
          await secureStorage.getDouble('ff_affiliationQtyDevided') ??
              _affiliationQtyDevided;
    });
    await _safeInitAsync(() async {
      _firsttimeMyHealth =
          await secureStorage.getBool('ff_firsttimeMyHealth') ??
              _firsttimeMyHealth;
    });
    await _safeInitAsync(() async {
      _firsttimeMyProblem =
          await secureStorage.getBool('ff_firsttimeMyProblem') ??
              _firsttimeMyProblem;
    });
    await _safeInitAsync(() async {
      _firstimeReward =
          await secureStorage.getBool('ff_firstimeReward') ?? _firstimeReward;
    });
    await _safeInitAsync(() async {
      _firstimeCoach =
          await secureStorage.getBool('ff_firstimeCoach') ?? _firstimeCoach;
    });
    await _safeInitAsync(() async {
      _firstimeMarketplace =
          await secureStorage.getBool('ff_firstimeMarketplace') ??
              _firstimeMarketplace;
    });
    await _safeInitAsync(() async {
      _firstimeAlert =
          await secureStorage.getBool('ff_firstimeAlert') ?? _firstimeAlert;
    });
    await _safeInitAsync(() async {
      _firstimeSimulator =
          await secureStorage.getBool('ff_firstimeSimulator') ??
              _firstimeSimulator;
    });
    await _safeInitAsync(() async {
      _firstimeMyInformations =
          await secureStorage.getBool('ff_firstimeMyInformations') ??
              _firstimeMyInformations;
    });
    await _safeInitAsync(() async {
      _firstimeMyAssistance =
          await secureStorage.getBool('ff_firstimeMyAssistance') ??
              _firstimeMyAssistance;
    });
    await _safeInitAsync(() async {
      _firstimePrevention =
          await secureStorage.getBool('ff_firstimePrevention') ??
              _firstimePrevention;
    });
    await _safeInitAsync(() async {
      _coachimage =
          await secureStorage.getString('ff_coachimage') ?? _coachimage;
    });
    await _safeInitAsync(() async {
      _firstimeCoachChat =
          await secureStorage.getBool('ff_firstimeCoachChat') ??
              _firstimeCoachChat;
    });
    await _safeInitAsync(() async {
      _coachClientChoose2 =
          await secureStorage.getString('ff_coachClientChoose2') ??
              _coachClientChoose2;
    });
    await _safeInitAsync(() async {
      _hasAlerts = await secureStorage.getBool('ff_hasAlerts') ?? _hasAlerts;
    });
    await _safeInitAsync(() async {
      _firsttimeDailyplan =
          await secureStorage.getBool('ff_firsttimeDailyplan') ??
              _firsttimeDailyplan;
    });
    await _safeInitAsync(() async {
      _dailyplanDate = await secureStorage.read(key: 'ff_dailyplanDate') != null
          ? DateTime.fromMillisecondsSinceEpoch(
              (await secureStorage.getInt('ff_dailyplanDate'))!)
          : _dailyplanDate;
    });
    await _safeInitAsync(() async {
      _firsttimeMyDisease =
          await secureStorage.getBool('ff_firsttimeMyDisease') ??
              _firsttimeMyDisease;
    });
    await _safeInitAsync(() async {
      _firsttimeMyAleas = await secureStorage.getBool('ff_firsttimeMyAleas') ??
          _firsttimeMyAleas;
    });
    await _safeInitAsync(() async {
      _blockmarketplace = await secureStorage.getInt('ff_blockmarketplace') ??
          _blockmarketplace;
    });
    await _safeInitAsync(() async {
      _postalcode =
          await secureStorage.getString('ff_postalcode') ?? _postalcode;
    });
    await _safeInitAsync(() async {
      _dashMessage =
          await secureStorage.getBool('ff_dashMessage') ?? _dashMessage;
    });
    await _safeInitAsync(() async {
      _onboardLevel =
          await secureStorage.getInt('ff_onboardLevel') ?? _onboardLevel;
    });
    await _safeInitAsync(() async {
      _howmanymedecinesindatabaseforcurrentuser = await secureStorage
              .getInt('ff_howmanymedecinesindatabaseforcurrentuser') ??
          _howmanymedecinesindatabaseforcurrentuser;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _deviceId = '';
  String get deviceId => _deviceId;
  set deviceId(String value) {
    _deviceId = value;
    secureStorage.setString('ff_deviceId', value);
  }

  void deleteDeviceId() {
    secureStorage.delete(key: 'ff_deviceId');
  }

  int _coach = 0;
  int get coach => _coach;
  set coach(int value) {
    _coach = value;
    secureStorage.setInt('ff_coach', value);
  }

  void deleteCoach() {
    secureStorage.delete(key: 'ff_coach');
  }

  bool _loadedAjax = false;
  bool get loadedAjax => _loadedAjax;
  set loadedAjax(bool value) {
    _loadedAjax = value;
  }

  bool _active = false;
  bool get active => _active;
  set active(bool value) {
    _active = value;
  }

  bool _preventionFolderAlreadyVisit = false;
  bool get preventionFolderAlreadyVisit => _preventionFolderAlreadyVisit;
  set preventionFolderAlreadyVisit(bool value) {
    _preventionFolderAlreadyVisit = value;
    secureStorage.setBool('ff_preventionFolderAlreadyVisit', value);
  }

  void deletePreventionFolderAlreadyVisit() {
    secureStorage.delete(key: 'ff_preventionFolderAlreadyVisit');
  }

  bool _optin = false;
  bool get optin => _optin;
  set optin(bool value) {
    _optin = value;
  }

  String _welcomeString = '';
  String get welcomeString => _welcomeString;
  set welcomeString(String value) {
    _welcomeString = value;
    secureStorage.setString('ff_welcomeString', value);
  }

  void deleteWelcomeString() {
    secureStorage.delete(key: 'ff_welcomeString');
  }

  String _affiliationlink = '';
  String get affiliationlink => _affiliationlink;
  set affiliationlink(String value) {
    _affiliationlink = value;
    secureStorage.setString('ff_affiliationlink', value);
  }

  void deleteAffiliationlink() {
    secureStorage.delete(key: 'ff_affiliationlink');
  }

  String _sidebarFirstname = '';
  String get sidebarFirstname => _sidebarFirstname;
  set sidebarFirstname(String value) {
    _sidebarFirstname = value;
    secureStorage.setString('ff_sidebarFirstname', value);
  }

  void deleteSidebarFirstname() {
    secureStorage.delete(key: 'ff_sidebarFirstname');
  }

  String _sidebarLastname = '';
  String get sidebarLastname => _sidebarLastname;
  set sidebarLastname(String value) {
    _sidebarLastname = value;
    secureStorage.setString('ff_sidebarLastname', value);
  }

  void deleteSidebarLastname() {
    secureStorage.delete(key: 'ff_sidebarLastname');
  }

  String _sidebarAvatar = '';
  String get sidebarAvatar => _sidebarAvatar;
  set sidebarAvatar(String value) {
    _sidebarAvatar = value;
    secureStorage.setString('ff_sidebarAvatar', value);
  }

  void deleteSidebarAvatar() {
    secureStorage.delete(key: 'ff_sidebarAvatar');
  }

  String _sidebarGender = '';
  String get sidebarGender => _sidebarGender;
  set sidebarGender(String value) {
    _sidebarGender = value;
    secureStorage.setString('ff_sidebarGender', value);
  }

  void deleteSidebarGender() {
    secureStorage.delete(key: 'ff_sidebarGender');
  }

  String _sidebarEmail = '';
  String get sidebarEmail => _sidebarEmail;
  set sidebarEmail(String value) {
    _sidebarEmail = value;
    secureStorage.setString('ff_sidebarEmail', value);
  }

  void deleteSidebarEmail() {
    secureStorage.delete(key: 'ff_sidebarEmail');
  }

  String _sidebarAge = '';
  String get sidebarAge => _sidebarAge;
  set sidebarAge(String value) {
    _sidebarAge = value;
    secureStorage.setString('ff_sidebarAge', value);
  }

  void deleteSidebarAge() {
    secureStorage.delete(key: 'ff_sidebarAge');
  }

  String _sidebarWeight = '';
  String get sidebarWeight => _sidebarWeight;
  set sidebarWeight(String value) {
    _sidebarWeight = value;
    secureStorage.setString('ff_sidebarWeight', value);
  }

  void deleteSidebarWeight() {
    secureStorage.delete(key: 'ff_sidebarWeight');
  }

  String _sidebarSize = '';
  String get sidebarSize => _sidebarSize;
  set sidebarSize(String value) {
    _sidebarSize = value;
  }

  String _sidebarMobile = '';
  String get sidebarMobile => _sidebarMobile;
  set sidebarMobile(String value) {
    _sidebarMobile = value;
    secureStorage.setString('ff_sidebarMobile', value);
  }

  void deleteSidebarMobile() {
    secureStorage.delete(key: 'ff_sidebarMobile');
  }

  String _showPause = '';
  String get showPause => _showPause;
  set showPause(String value) {
    _showPause = value;
  }

  String _showAnalyse = '';
  String get showAnalyse => _showAnalyse;
  set showAnalyse(String value) {
    _showAnalyse = value;
  }

  String _recofirstName = '';
  String get recofirstName => _recofirstName;
  set recofirstName(String value) {
    _recofirstName = value;
  }

  String _recoFirstDescription = '';
  String get recoFirstDescription => _recoFirstDescription;
  set recoFirstDescription(String value) {
    _recoFirstDescription = value;
  }

  int _recofirstId = 0;
  int get recofirstId => _recofirstId;
  set recofirstId(int value) {
    _recofirstId = value;
  }

  String _recofirstImage = '';
  String get recofirstImage => _recofirstImage;
  set recofirstImage(String value) {
    _recofirstImage = value;
  }

  String _isTrial = '';
  String get isTrial => _isTrial;
  set isTrial(String value) {
    _isTrial = value;
    secureStorage.setString('ff_isTrial', value);
  }

  void deleteIsTrial() {
    secureStorage.delete(key: 'ff_isTrial');
  }

  String _isNotTrial = '';
  String get isNotTrial => _isNotTrial;
  set isNotTrial(String value) {
    _isNotTrial = value;
    secureStorage.setString('ff_isNotTrial', value);
  }

  void deleteIsNotTrial() {
    secureStorage.delete(key: 'ff_isNotTrial');
  }

  bool _showRewardsOffers = true;
  bool get showRewardsOffers => _showRewardsOffers;
  set showRewardsOffers(bool value) {
    _showRewardsOffers = value;
  }

  bool _showRewardsHistory = false;
  bool get showRewardsHistory => _showRewardsHistory;
  set showRewardsHistory(bool value) {
    _showRewardsHistory = value;
  }

  bool _containQuestion = false;
  bool get containQuestion => _containQuestion;
  set containQuestion(bool value) {
    _containQuestion = value;
  }

  String _status = '';
  String get status => _status;
  set status(String value) {
    _status = value;
    secureStorage.setString('ff_status', value);
  }

  void deleteStatus() {
    secureStorage.delete(key: 'ff_status');
  }

  double _scoring = 0.0;
  double get scoring => _scoring;
  set scoring(double value) {
    _scoring = value;
    secureStorage.setDouble('ff_scoring', value);
  }

  void deleteScoring() {
    secureStorage.delete(key: 'ff_scoring');
  }

  String _coachpicture = '';
  String get coachpicture => _coachpicture;
  set coachpicture(String value) {
    _coachpicture = value;
    secureStorage.setString('ff_coachpicture', value);
  }

  void deleteCoachpicture() {
    secureStorage.delete(key: 'ff_coachpicture');
  }

  int _rewardscore = 0;
  int get rewardscore => _rewardscore;
  set rewardscore(int value) {
    _rewardscore = value;
    secureStorage.setInt('ff_rewardscore', value);
  }

  void deleteRewardscore() {
    secureStorage.delete(key: 'ff_rewardscore');
  }

  int _score = 0;
  int get score => _score;
  set score(int value) {
    _score = value;
    secureStorage.setInt('ff_score', value);
  }

  void deleteScore() {
    secureStorage.delete(key: 'ff_score');
  }

  String _affiliationCode = '';
  String get affiliationCode => _affiliationCode;
  set affiliationCode(String value) {
    _affiliationCode = value;
    secureStorage.setString('ff_affiliationCode', value);
  }

  void deleteAffiliationCode() {
    secureStorage.delete(key: 'ff_affiliationCode');
  }

  String _affiliationQty = '';
  String get affiliationQty => _affiliationQty;
  set affiliationQty(String value) {
    _affiliationQty = value;
    secureStorage.setString('ff_affiliationQty', value);
  }

  void deleteAffiliationQty() {
    secureStorage.delete(key: 'ff_affiliationQty');
  }

  double _affiliationQtyDevided = 0.0;
  double get affiliationQtyDevided => _affiliationQtyDevided;
  set affiliationQtyDevided(double value) {
    _affiliationQtyDevided = value;
    secureStorage.setDouble('ff_affiliationQtyDevided', value);
  }

  void deleteAffiliationQtyDevided() {
    secureStorage.delete(key: 'ff_affiliationQtyDevided');
  }

  bool _isTechnique = false;
  bool get isTechnique => _isTechnique;
  set isTechnique(bool value) {
    _isTechnique = value;
  }

  bool _firsttimeMyHealth = false;
  bool get firsttimeMyHealth => _firsttimeMyHealth;
  set firsttimeMyHealth(bool value) {
    _firsttimeMyHealth = value;
    secureStorage.setBool('ff_firsttimeMyHealth', value);
  }

  void deleteFirsttimeMyHealth() {
    secureStorage.delete(key: 'ff_firsttimeMyHealth');
  }

  bool _firsttimeMyProblem = false;
  bool get firsttimeMyProblem => _firsttimeMyProblem;
  set firsttimeMyProblem(bool value) {
    _firsttimeMyProblem = value;
    secureStorage.setBool('ff_firsttimeMyProblem', value);
  }

  void deleteFirsttimeMyProblem() {
    secureStorage.delete(key: 'ff_firsttimeMyProblem');
  }

  bool _firstimeReward = false;
  bool get firstimeReward => _firstimeReward;
  set firstimeReward(bool value) {
    _firstimeReward = value;
    secureStorage.setBool('ff_firstimeReward', value);
  }

  void deleteFirstimeReward() {
    secureStorage.delete(key: 'ff_firstimeReward');
  }

  bool _firstimeCoach = false;
  bool get firstimeCoach => _firstimeCoach;
  set firstimeCoach(bool value) {
    _firstimeCoach = value;
    secureStorage.setBool('ff_firstimeCoach', value);
  }

  void deleteFirstimeCoach() {
    secureStorage.delete(key: 'ff_firstimeCoach');
  }

  bool _firstimeMarketplace = false;
  bool get firstimeMarketplace => _firstimeMarketplace;
  set firstimeMarketplace(bool value) {
    _firstimeMarketplace = value;
    secureStorage.setBool('ff_firstimeMarketplace', value);
  }

  void deleteFirstimeMarketplace() {
    secureStorage.delete(key: 'ff_firstimeMarketplace');
  }

  bool _firstimeAlert = false;
  bool get firstimeAlert => _firstimeAlert;
  set firstimeAlert(bool value) {
    _firstimeAlert = value;
    secureStorage.setBool('ff_firstimeAlert', value);
  }

  void deleteFirstimeAlert() {
    secureStorage.delete(key: 'ff_firstimeAlert');
  }

  bool _firstimeSimulator = false;
  bool get firstimeSimulator => _firstimeSimulator;
  set firstimeSimulator(bool value) {
    _firstimeSimulator = value;
    secureStorage.setBool('ff_firstimeSimulator', value);
  }

  void deleteFirstimeSimulator() {
    secureStorage.delete(key: 'ff_firstimeSimulator');
  }

  bool _firstimeMyInformations = false;
  bool get firstimeMyInformations => _firstimeMyInformations;
  set firstimeMyInformations(bool value) {
    _firstimeMyInformations = value;
    secureStorage.setBool('ff_firstimeMyInformations', value);
  }

  void deleteFirstimeMyInformations() {
    secureStorage.delete(key: 'ff_firstimeMyInformations');
  }

  bool _firstimeMyAssistance = false;
  bool get firstimeMyAssistance => _firstimeMyAssistance;
  set firstimeMyAssistance(bool value) {
    _firstimeMyAssistance = value;
    secureStorage.setBool('ff_firstimeMyAssistance', value);
  }

  void deleteFirstimeMyAssistance() {
    secureStorage.delete(key: 'ff_firstimeMyAssistance');
  }

  bool _firstimePrevention = false;
  bool get firstimePrevention => _firstimePrevention;
  set firstimePrevention(bool value) {
    _firstimePrevention = value;
    secureStorage.setBool('ff_firstimePrevention', value);
  }

  void deleteFirstimePrevention() {
    secureStorage.delete(key: 'ff_firstimePrevention');
  }

  String _coachimage = '';
  String get coachimage => _coachimage;
  set coachimage(String value) {
    _coachimage = value;
    secureStorage.setString('ff_coachimage', value);
  }

  void deleteCoachimage() {
    secureStorage.delete(key: 'ff_coachimage');
  }

  bool _showDailyNews = false;
  bool get showDailyNews => _showDailyNews;
  set showDailyNews(bool value) {
    _showDailyNews = value;
  }

  bool _firstimeCoachChat = false;
  bool get firstimeCoachChat => _firstimeCoachChat;
  set firstimeCoachChat(bool value) {
    _firstimeCoachChat = value;
    secureStorage.setBool('ff_firstimeCoachChat', value);
  }

  void deleteFirstimeCoachChat() {
    secureStorage.delete(key: 'ff_firstimeCoachChat');
  }

  String _coachClientChoose = '';
  String get coachClientChoose => _coachClientChoose;
  set coachClientChoose(String value) {
    _coachClientChoose = value;
  }

  String _coachClientChoose2 = '';
  String get coachClientChoose2 => _coachClientChoose2;
  set coachClientChoose2(String value) {
    _coachClientChoose2 = value;
    secureStorage.setString('ff_coachClientChoose2', value);
  }

  void deleteCoachClientChoose2() {
    secureStorage.delete(key: 'ff_coachClientChoose2');
  }

  String _labelCoach3 = '';
  String get labelCoach3 => _labelCoach3;
  set labelCoach3(String value) {
    _labelCoach3 = value;
  }

  String _coachQuery = '';
  String get coachQuery => _coachQuery;
  set coachQuery(String value) {
    _coachQuery = value;
  }

  String _simulatorFilter = '';
  String get simulatorFilter => _simulatorFilter;
  set simulatorFilter(String value) {
    _simulatorFilter = value;
  }

  bool _simulatorHistory = false;
  bool get simulatorHistory => _simulatorHistory;
  set simulatorHistory(bool value) {
    _simulatorHistory = value;
  }

  bool _withContinue = false;
  bool get withContinue => _withContinue;
  set withContinue(bool value) {
    _withContinue = value;
  }

  int _homePosition = 0;
  int get homePosition => _homePosition;
  set homePosition(int value) {
    _homePosition = value;
  }

  bool _hasAlerts = false;
  bool get hasAlerts => _hasAlerts;
  set hasAlerts(bool value) {
    _hasAlerts = value;
    secureStorage.setBool('ff_hasAlerts', value);
  }

  void deleteHasAlerts() {
    secureStorage.delete(key: 'ff_hasAlerts');
  }

  bool _firsttimeDailyplan = false;
  bool get firsttimeDailyplan => _firsttimeDailyplan;
  set firsttimeDailyplan(bool value) {
    _firsttimeDailyplan = value;
    secureStorage.setBool('ff_firsttimeDailyplan', value);
  }

  void deleteFirsttimeDailyplan() {
    secureStorage.delete(key: 'ff_firsttimeDailyplan');
  }

  DateTime? _dailyplanDate;
  DateTime? get dailyplanDate => _dailyplanDate;
  set dailyplanDate(DateTime? value) {
    _dailyplanDate = value;
    value != null
        ? secureStorage.setInt('ff_dailyplanDate', value.millisecondsSinceEpoch)
        : secureStorage.remove('ff_dailyplanDate');
  }

  void deleteDailyplanDate() {
    secureStorage.delete(key: 'ff_dailyplanDate');
  }

  String _dailyplanCategory = '';
  String get dailyplanCategory => _dailyplanCategory;
  set dailyplanCategory(String value) {
    _dailyplanCategory = value;
  }

  String _dailyplanMoment = '';
  String get dailyplanMoment => _dailyplanMoment;
  set dailyplanMoment(String value) {
    _dailyplanMoment = value;
  }

  int _screenLast = 0;
  int get screenLast => _screenLast;
  set screenLast(int value) {
    _screenLast = value;
  }

  int _screenNow = 0;
  int get screenNow => _screenNow;
  set screenNow(int value) {
    _screenNow = value;
  }

  String _sequenceName = '';
  String get sequenceName => _sequenceName;
  set sequenceName(String value) {
    _sequenceName = value;
  }

  String _stepCounter = '';
  String get stepCounter => _stepCounter;
  set stepCounter(String value) {
    _stepCounter = value;
  }

  bool _checkboxclicked = false;
  bool get checkboxclicked => _checkboxclicked;
  set checkboxclicked(bool value) {
    _checkboxclicked = value;
  }

  double _ranking = 0.0;
  double get ranking => _ranking;
  set ranking(double value) {
    _ranking = value;
  }

  double _rankingDevided = 0.0;
  double get rankingDevided => _rankingDevided;
  set rankingDevided(double value) {
    _rankingDevided = value;
  }

  String _rankingtitle = '';
  String get rankingtitle => _rankingtitle;
  set rankingtitle(String value) {
    _rankingtitle = value;
  }

  String _rankingdesc = '';
  String get rankingdesc => _rankingdesc;
  set rankingdesc(String value) {
    _rankingdesc = value;
  }

  String _rankingimage = '';
  String get rankingimage => _rankingimage;
  set rankingimage(String value) {
    _rankingimage = value;
  }

  bool _contactFormCheckbox = false;
  bool get contactFormCheckbox => _contactFormCheckbox;
  set contactFormCheckbox(bool value) {
    _contactFormCheckbox = value;
  }

  bool _NavBar1 = false;
  bool get NavBar1 => _NavBar1;
  set NavBar1(bool value) {
    _NavBar1 = value;
  }

  bool _NavBar2 = false;
  bool get NavBar2 => _NavBar2;
  set NavBar2(bool value) {
    _NavBar2 = value;
  }

  bool _NavBar3 = false;
  bool get NavBar3 => _NavBar3;
  set NavBar3(bool value) {
    _NavBar3 = value;
  }

  bool _NavBar4 = false;
  bool get NavBar4 => _NavBar4;
  set NavBar4(bool value) {
    _NavBar4 = value;
  }

  bool _NavBar5 = false;
  bool get NavBar5 => _NavBar5;
  set NavBar5(bool value) {
    _NavBar5 = value;
  }

  String _codecolor = '';
  String get codecolor => _codecolor;
  set codecolor(String value) {
    _codecolor = value;
  }

  bool _firsttimeMyDisease = false;
  bool get firsttimeMyDisease => _firsttimeMyDisease;
  set firsttimeMyDisease(bool value) {
    _firsttimeMyDisease = value;
    secureStorage.setBool('ff_firsttimeMyDisease', value);
  }

  void deleteFirsttimeMyDisease() {
    secureStorage.delete(key: 'ff_firsttimeMyDisease');
  }

  bool _firsttimeMyAleas = false;
  bool get firsttimeMyAleas => _firsttimeMyAleas;
  set firsttimeMyAleas(bool value) {
    _firsttimeMyAleas = value;
    secureStorage.setBool('ff_firsttimeMyAleas', value);
  }

  void deleteFirsttimeMyAleas() {
    secureStorage.delete(key: 'ff_firsttimeMyAleas');
  }

  bool _AccountMenuActive = false;
  bool get AccountMenuActive => _AccountMenuActive;
  set AccountMenuActive(bool value) {
    _AccountMenuActive = value;
  }

  String _codecolorlight = '';
  String get codecolorlight => _codecolorlight;
  set codecolorlight(String value) {
    _codecolorlight = value;
  }

  int _blockmarketplace = 0;
  int get blockmarketplace => _blockmarketplace;
  set blockmarketplace(int value) {
    _blockmarketplace = value;
    secureStorage.setInt('ff_blockmarketplace', value);
  }

  void deleteBlockmarketplace() {
    secureStorage.delete(key: 'ff_blockmarketplace');
  }

  String _birthdateLabel = 'Date de naissance';
  String get birthdateLabel => _birthdateLabel;
  set birthdateLabel(String value) {
    _birthdateLabel = value;
  }

  bool _red = false;
  bool get red => _red;
  set red(bool value) {
    _red = value;
  }

  bool _fav = false;
  bool get fav => _fav;
  set fav(bool value) {
    _fav = value;
  }

  String _buttoncolor = '';
  String get buttoncolor => _buttoncolor;
  set buttoncolor(String value) {
    _buttoncolor = value;
  }

  String _buttoncolortext = '';
  String get buttoncolortext => _buttoncolortext;
  set buttoncolortext(String value) {
    _buttoncolortext = value;
  }

  String _bordercolor = '';
  String get bordercolor => _bordercolor;
  set bordercolor(String value) {
    _bordercolor = value;
  }

  String _colortext = '';
  String get colortext => _colortext;
  set colortext(String value) {
    _colortext = value;
  }

  bool _notificationEnabled = false;
  bool get notificationEnabled => _notificationEnabled;
  set notificationEnabled(bool value) {
    _notificationEnabled = value;
  }

  bool _smsEnabled = false;
  bool get smsEnabled => _smsEnabled;
  set smsEnabled(bool value) {
    _smsEnabled = value;
  }

  bool _emailEnabled = false;
  bool get emailEnabled => _emailEnabled;
  set emailEnabled(bool value) {
    _emailEnabled = value;
  }

  int _pushInt = 0;
  int get pushInt => _pushInt;
  set pushInt(int value) {
    _pushInt = value;
  }

  int _smsInt = 0;
  int get smsInt => _smsInt;
  set smsInt(int value) {
    _smsInt = value;
  }

  int _emailInt = 0;
  int get emailInt => _emailInt;
  set emailInt(int value) {
    _emailInt = value;
  }

  bool _freeaccess = false;
  bool get freeaccess => _freeaccess;
  set freeaccess(bool value) {
    _freeaccess = value;
  }

  String _dropdownvalue = '';
  String get dropdownvalue => _dropdownvalue;
  set dropdownvalue(String value) {
    _dropdownvalue = value;
  }

  bool _stepCounterBool = false;
  bool get stepCounterBool => _stepCounterBool;
  set stepCounterBool(bool value) {
    _stepCounterBool = value;
  }

  bool _redirect = false;
  bool get redirect => _redirect;
  set redirect(bool value) {
    _redirect = value;
  }

  int _destination = 0;
  int get destination => _destination;
  set destination(int value) {
    _destination = value;
  }

  int _destinationint = 0;
  int get destinationint => _destinationint;
  set destinationint(int value) {
    _destinationint = value;
  }

  String _logo = '';
  String get logo => _logo;
  set logo(String value) {
    _logo = value;
  }

  String _logostr = '';
  String get logostr => _logostr;
  set logostr(String value) {
    _logostr = value;
  }

  bool _agir1 = false;
  bool get agir1 => _agir1;
  set agir1(bool value) {
    _agir1 = value;
  }

  bool _agir2 = false;
  bool get agir2 => _agir2;
  set agir2(bool value) {
    _agir2 = value;
  }

  bool _agir3 = false;
  bool get agir3 => _agir3;
  set agir3(bool value) {
    _agir3 = value;
  }

  bool _agir4 = false;
  bool get agir4 => _agir4;
  set agir4(bool value) {
    _agir4 = value;
  }

  bool _agir5 = false;
  bool get agir5 => _agir5;
  set agir5(bool value) {
    _agir5 = value;
  }

  bool _agir6 = false;
  bool get agir6 => _agir6;
  set agir6(bool value) {
    _agir6 = value;
  }

  bool _agir7 = false;
  bool get agir7 => _agir7;
  set agir7(bool value) {
    _agir7 = value;
  }

  bool _agir8 = false;
  bool get agir8 => _agir8;
  set agir8(bool value) {
    _agir8 = value;
  }

  bool _agir9 = false;
  bool get agir9 => _agir9;
  set agir9(bool value) {
    _agir9 = value;
  }

  bool _agir10 = false;
  bool get agir10 => _agir10;
  set agir10(bool value) {
    _agir10 = value;
  }

  bool _agirBlocker = false;
  bool get agirBlocker => _agirBlocker;
  set agirBlocker(bool value) {
    _agirBlocker = value;
  }

  bool _agirBlockerSubmit = false;
  bool get agirBlockerSubmit => _agirBlockerSubmit;
  set agirBlockerSubmit(bool value) {
    _agirBlockerSubmit = value;
  }

  int _agirLast = 0;
  int get agirLast => _agirLast;
  set agirLast(int value) {
    _agirLast = value;
  }

  String _postalcode = '';
  String get postalcode => _postalcode;
  set postalcode(String value) {
    _postalcode = value;
    secureStorage.setString('ff_postalcode', value);
  }

  void deletePostalcode() {
    secureStorage.delete(key: 'ff_postalcode');
  }

  bool _containHeaderAgir = false;
  bool get containHeaderAgir => _containHeaderAgir;
  set containHeaderAgir(bool value) {
    _containHeaderAgir = value;
  }

  bool _bagir1 = false;
  bool get bagir1 => _bagir1;
  set bagir1(bool value) {
    _bagir1 = value;
  }

  bool _bagir2 = false;
  bool get bagir2 => _bagir2;
  set bagir2(bool value) {
    _bagir2 = value;
  }

  bool _bagir3 = false;
  bool get bagir3 => _bagir3;
  set bagir3(bool value) {
    _bagir3 = value;
  }

  bool _bagir4 = false;
  bool get bagir4 => _bagir4;
  set bagir4(bool value) {
    _bagir4 = value;
  }

  bool _bagir5 = false;
  bool get bagir5 => _bagir5;
  set bagir5(bool value) {
    _bagir5 = value;
  }

  bool _bagir6 = false;
  bool get bagir6 => _bagir6;
  set bagir6(bool value) {
    _bagir6 = value;
  }

  bool _bagir7 = false;
  bool get bagir7 => _bagir7;
  set bagir7(bool value) {
    _bagir7 = value;
  }

  bool _bagir8 = false;
  bool get bagir8 => _bagir8;
  set bagir8(bool value) {
    _bagir8 = value;
  }

  bool _bagir9 = false;
  bool get bagir9 => _bagir9;
  set bagir9(bool value) {
    _bagir9 = value;
  }

  bool _bagir10 = false;
  bool get bagir10 => _bagir10;
  set bagir10(bool value) {
    _bagir10 = value;
  }

  List<String> _radioMultipleString = [];
  List<String> get radioMultipleString => _radioMultipleString;
  set radioMultipleString(List<String> value) {
    _radioMultipleString = value;
  }

  void addToRadioMultipleString(String value) {
    radioMultipleString.add(value);
  }

  void removeFromRadioMultipleString(String value) {
    radioMultipleString.remove(value);
  }

  void removeAtIndexFromRadioMultipleString(int index) {
    radioMultipleString.removeAt(index);
  }

  void updateRadioMultipleStringAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    radioMultipleString[index] = updateFn(_radioMultipleString[index]);
  }

  void insertAtIndexInRadioMultipleString(int index, String value) {
    radioMultipleString.insert(index, value);
  }

  bool _tempoHide = false;
  bool get tempoHide => _tempoHide;
  set tempoHide(bool value) {
    _tempoHide = value;
  }

  bool _agir11 = false;
  bool get agir11 => _agir11;
  set agir11(bool value) {
    _agir11 = value;
  }

  bool _agir12 = false;
  bool get agir12 => _agir12;
  set agir12(bool value) {
    _agir12 = value;
  }

  bool _agir13 = false;
  bool get agir13 => _agir13;
  set agir13(bool value) {
    _agir13 = value;
  }

  bool _agir14 = false;
  bool get agir14 => _agir14;
  set agir14(bool value) {
    _agir14 = value;
  }

  bool _agir15 = false;
  bool get agir15 => _agir15;
  set agir15(bool value) {
    _agir15 = value;
  }

  bool _agir16 = false;
  bool get agir16 => _agir16;
  set agir16(bool value) {
    _agir16 = value;
  }

  bool _agir17 = false;
  bool get agir17 => _agir17;
  set agir17(bool value) {
    _agir17 = value;
  }

  bool _agir18 = false;
  bool get agir18 => _agir18;
  set agir18(bool value) {
    _agir18 = value;
  }

  bool _agir19 = false;
  bool get agir19 => _agir19;
  set agir19(bool value) {
    _agir19 = value;
  }

  bool _agir20 = false;
  bool get agir20 => _agir20;
  set agir20(bool value) {
    _agir20 = value;
  }

  bool _bagir11 = false;
  bool get bagir11 => _bagir11;
  set bagir11(bool value) {
    _bagir11 = value;
  }

  bool _bagir12 = false;
  bool get bagir12 => _bagir12;
  set bagir12(bool value) {
    _bagir12 = value;
  }

  bool _bagir13 = false;
  bool get bagir13 => _bagir13;
  set bagir13(bool value) {
    _bagir13 = value;
  }

  bool _bagir14 = false;
  bool get bagir14 => _bagir14;
  set bagir14(bool value) {
    _bagir14 = value;
  }

  bool _bagir15 = false;
  bool get bagir15 => _bagir15;
  set bagir15(bool value) {
    _bagir15 = value;
  }

  bool _bagir16 = false;
  bool get bagir16 => _bagir16;
  set bagir16(bool value) {
    _bagir16 = value;
  }

  bool _bagir17 = false;
  bool get bagir17 => _bagir17;
  set bagir17(bool value) {
    _bagir17 = value;
  }

  bool _bagir18 = false;
  bool get bagir18 => _bagir18;
  set bagir18(bool value) {
    _bagir18 = value;
  }

  bool _bagir19 = false;
  bool get bagir19 => _bagir19;
  set bagir19(bool value) {
    _bagir19 = value;
  }

  bool _bagir20 = false;
  bool get bagir20 => _bagir20;
  set bagir20(bool value) {
    _bagir20 = value;
  }

  bool _isProgramme = false;
  bool get isProgramme => _isProgramme;
  set isProgramme(bool value) {
    _isProgramme = value;
  }

  String _coachLongMessage = '';
  String get coachLongMessage => _coachLongMessage;
  set coachLongMessage(String value) {
    _coachLongMessage = value;
  }

  String _coachProp = '';
  String get coachProp => _coachProp;
  set coachProp(String value) {
    _coachProp = value;
  }

  String _isQuestionLabel = '';
  String get isQuestionLabel => _isQuestionLabel;
  set isQuestionLabel(String value) {
    _isQuestionLabel = value;
  }

  int _heightContainerAppScreen = 0;
  int get heightContainerAppScreen => _heightContainerAppScreen;
  set heightContainerAppScreen(int value) {
    _heightContainerAppScreen = value;
  }

  int _heightAgir = 0;
  int get heightAgir => _heightAgir;
  set heightAgir(int value) {
    _heightAgir = value;
  }

  int _heightAgirVideo = 0;
  int get heightAgirVideo => _heightAgirVideo;
  set heightAgirVideo(int value) {
    _heightAgirVideo = value;
  }

  String _mediaimagequestion = '';
  String get mediaimagequestion => _mediaimagequestion;
  set mediaimagequestion(String value) {
    _mediaimagequestion = value;
  }

  String _versionNumber = '';
  String get versionNumber => _versionNumber;
  set versionNumber(String value) {
    _versionNumber = value;
  }

  bool _dashMessage = false;
  bool get dashMessage => _dashMessage;
  set dashMessage(bool value) {
    _dashMessage = value;
    secureStorage.setBool('ff_dashMessage', value);
  }

  void deleteDashMessage() {
    secureStorage.delete(key: 'ff_dashMessage');
  }

  List<AgirStruct> _agirStatusList = [];
  List<AgirStruct> get agirStatusList => _agirStatusList;
  set agirStatusList(List<AgirStruct> value) {
    _agirStatusList = value;
  }

  void addToAgirStatusList(AgirStruct value) {
    agirStatusList.add(value);
  }

  void removeFromAgirStatusList(AgirStruct value) {
    agirStatusList.remove(value);
  }

  void removeAtIndexFromAgirStatusList(int index) {
    agirStatusList.removeAt(index);
  }

  void updateAgirStatusListAtIndex(
    int index,
    AgirStruct Function(AgirStruct) updateFn,
  ) {
    agirStatusList[index] = updateFn(_agirStatusList[index]);
  }

  void insertAtIndexInAgirStatusList(int index, AgirStruct value) {
    agirStatusList.insert(index, value);
  }

  bool _AdereDashboardHeaderNav1 = false;
  bool get AdereDashboardHeaderNav1 => _AdereDashboardHeaderNav1;
  set AdereDashboardHeaderNav1(bool value) {
    _AdereDashboardHeaderNav1 = value;
  }

  bool _AdereDashboardHeaderNav2 = false;
  bool get AdereDashboardHeaderNav2 => _AdereDashboardHeaderNav2;
  set AdereDashboardHeaderNav2(bool value) {
    _AdereDashboardHeaderNav2 = value;
  }

  bool _AdereDashboardHeaderNav3 = false;
  bool get AdereDashboardHeaderNav3 => _AdereDashboardHeaderNav3;
  set AdereDashboardHeaderNav3(bool value) {
    _AdereDashboardHeaderNav3 = value;
  }

  bool _AdereDashboardHeaderNav4 = false;
  bool get AdereDashboardHeaderNav4 => _AdereDashboardHeaderNav4;
  set AdereDashboardHeaderNav4(bool value) {
    _AdereDashboardHeaderNav4 = value;
  }

  bool _AdereDashboardHomeNav1 = false;
  bool get AdereDashboardHomeNav1 => _AdereDashboardHomeNav1;
  set AdereDashboardHomeNav1(bool value) {
    _AdereDashboardHomeNav1 = value;
  }

  bool _AdereDashboardHomeNav2 = false;
  bool get AdereDashboardHomeNav2 => _AdereDashboardHomeNav2;
  set AdereDashboardHomeNav2(bool value) {
    _AdereDashboardHomeNav2 = value;
  }

  bool _AdereDashboardHomeNav3 = false;
  bool get AdereDashboardHomeNav3 => _AdereDashboardHomeNav3;
  set AdereDashboardHomeNav3(bool value) {
    _AdereDashboardHomeNav3 = value;
  }

  bool _AdereDashboardHomeNav4 = false;
  bool get AdereDashboardHomeNav4 => _AdereDashboardHomeNav4;
  set AdereDashboardHomeNav4(bool value) {
    _AdereDashboardHomeNav4 = value;
  }

  bool _AdereDashboardBottomNav1 = false;
  bool get AdereDashboardBottomNav1 => _AdereDashboardBottomNav1;
  set AdereDashboardBottomNav1(bool value) {
    _AdereDashboardBottomNav1 = value;
  }

  bool _AdereDashboardBottomNav2 = false;
  bool get AdereDashboardBottomNav2 => _AdereDashboardBottomNav2;
  set AdereDashboardBottomNav2(bool value) {
    _AdereDashboardBottomNav2 = value;
  }

  bool _AdereDashboardBottomNav3 = false;
  bool get AdereDashboardBottomNav3 => _AdereDashboardBottomNav3;
  set AdereDashboardBottomNav3(bool value) {
    _AdereDashboardBottomNav3 = value;
  }

  bool _AdereDashboardBottomNav4 = false;
  bool get AdereDashboardBottomNav4 => _AdereDashboardBottomNav4;
  set AdereDashboardBottomNav4(bool value) {
    _AdereDashboardBottomNav4 = value;
  }

  bool _AdereDashboardBottomNav5 = false;
  bool get AdereDashboardBottomNav5 => _AdereDashboardBottomNav5;
  set AdereDashboardBottomNav5(bool value) {
    _AdereDashboardBottomNav5 = value;
  }

  bool _AdereDashboardSaisiesNav1 = false;
  bool get AdereDashboardSaisiesNav1 => _AdereDashboardSaisiesNav1;
  set AdereDashboardSaisiesNav1(bool value) {
    _AdereDashboardSaisiesNav1 = value;
  }

  bool _AdereDashboardSaisiesNav2 = false;
  bool get AdereDashboardSaisiesNav2 => _AdereDashboardSaisiesNav2;
  set AdereDashboardSaisiesNav2(bool value) {
    _AdereDashboardSaisiesNav2 = value;
  }

  bool _AdereDashboardSaisiesNav3 = false;
  bool get AdereDashboardSaisiesNav3 => _AdereDashboardSaisiesNav3;
  set AdereDashboardSaisiesNav3(bool value) {
    _AdereDashboardSaisiesNav3 = value;
  }

  int _onboardLevel = 0;
  int get onboardLevel => _onboardLevel;
  set onboardLevel(int value) {
    _onboardLevel = value;
    secureStorage.setInt('ff_onboardLevel', value);
  }

  void deleteOnboardLevel() {
    secureStorage.delete(key: 'ff_onboardLevel');
  }

  int _presentationTripleTextPosition = 0;
  int get presentationTripleTextPosition => _presentationTripleTextPosition;
  set presentationTripleTextPosition(int value) {
    _presentationTripleTextPosition = value;
  }

  int _dropdownVisibility = 0;
  int get dropdownVisibility => _dropdownVisibility;
  set dropdownVisibility(int value) {
    _dropdownVisibility = value;
  }

  int _onboardingArmoireQty = 0;
  int get onboardingArmoireQty => _onboardingArmoireQty;
  set onboardingArmoireQty(int value) {
    _onboardingArmoireQty = value;
  }

  String _voieadministration = '';
  String get voieadministration => _voieadministration;
  set voieadministration(String value) {
    _voieadministration = value;
  }

  String _depuiscombientemps = '';
  String get depuiscombientemps => _depuiscombientemps;
  set depuiscombientemps(String value) {
    _depuiscombientemps = value;
  }

  String _dureeprescription = '';
  String get dureeprescription => _dureeprescription;
  set dureeprescription(String value) {
    _dureeprescription = value;
  }

  String _boitedelivree = '';
  String get boitedelivree => _boitedelivree;
  set boitedelivree(String value) {
    _boitedelivree = value;
  }

  String _pillsparboite = '';
  String get pillsparboite => _pillsparboite;
  set pillsparboite(String value) {
    _pillsparboite = value;
  }

  String _combienmedicamentparjour = '';
  String get combienmedicamentparjour => _combienmedicamentparjour;
  set combienmedicamentparjour(String value) {
    _combienmedicamentparjour = value;
  }

  String _combiengelluleparjour = '';
  String get combiengelluleparjour => _combiengelluleparjour;
  set combiengelluleparjour(String value) {
    _combiengelluleparjour = value;
  }

  String _quellemaladie = '';
  String get quellemaladie => _quellemaladie;
  set quellemaladie(String value) {
    _quellemaladie = value;
  }

  int _howmanymedecinesindatabaseforcurrentuser = 0;
  int get howmanymedecinesindatabaseforcurrentuser =>
      _howmanymedecinesindatabaseforcurrentuser;
  set howmanymedecinesindatabaseforcurrentuser(int value) {
    _howmanymedecinesindatabaseforcurrentuser = value;
    secureStorage.setInt('ff_howmanymedecinesindatabaseforcurrentuser', value);
  }

  void deleteHowmanymedecinesindatabaseforcurrentuser() {
    secureStorage.delete(key: 'ff_howmanymedecinesindatabaseforcurrentuser');
  }

  bool _daysVisibile = false;
  bool get daysVisibile => _daysVisibile;
  set daysVisibile(bool value) {
    _daysVisibile = value;
  }

  List<String> _daysTotake = [];
  List<String> get daysTotake => _daysTotake;
  set daysTotake(List<String> value) {
    _daysTotake = value;
  }

  void addToDaysTotake(String value) {
    daysTotake.add(value);
  }

  void removeFromDaysTotake(String value) {
    daysTotake.remove(value);
  }

  void removeAtIndexFromDaysTotake(int index) {
    daysTotake.removeAt(index);
  }

  void updateDaysTotakeAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    daysTotake[index] = updateFn(_daysTotake[index]);
  }

  void insertAtIndexInDaysTotake(int index, String value) {
    daysTotake.insert(index, value);
  }

  String _CBDEPRISE = '';
  String get CBDEPRISE => _CBDEPRISE;
  set CBDEPRISE(String value) {
    _CBDEPRISE = value;
  }

  bool _juskafin = false;
  bool get juskafin => _juskafin;
  set juskafin(bool value) {
    _juskafin = value;
  }

  String _voie = '';
  String get voie => _voie;
  set voie(String value) {
    _voie = value;
  }

  int _mondayCB = 0;
  int get mondayCB => _mondayCB;
  set mondayCB(int value) {
    _mondayCB = value;
  }

  String _dayInProgress = '';
  String get dayInProgress => _dayInProgress;
  set dayInProgress(String value) {
    _dayInProgress = value;
  }

  int _tuesdayCB = 0;
  int get tuesdayCB => _tuesdayCB;
  set tuesdayCB(int value) {
    _tuesdayCB = value;
  }

  int _wednesdayCB = 0;
  int get wednesdayCB => _wednesdayCB;
  set wednesdayCB(int value) {
    _wednesdayCB = value;
  }

  int _thursdayCB = 0;
  int get thursdayCB => _thursdayCB;
  set thursdayCB(int value) {
    _thursdayCB = value;
  }

  int _fridayCB = 0;
  int get fridayCB => _fridayCB;
  set fridayCB(int value) {
    _fridayCB = value;
  }

  int _saturdayCB = 0;
  int get saturdayCB => _saturdayCB;
  set saturdayCB(int value) {
    _saturdayCB = value;
  }

  int _sundayCB = 0;
  int get sundayCB => _sundayCB;
  set sundayCB(int value) {
    _sundayCB = value;
  }

  String _rappel = '';
  String get rappel => _rappel;
  set rappel(String value) {
    _rappel = value;
  }

  String _now = '';
  String get now => _now;
  set now(String value) {
    _now = value;
  }

  int _mood = 0;
  int get mood => _mood;
  set mood(int value) {
    _mood = value;
  }

  bool _symptomBool = false;
  bool get symptomBool => _symptomBool;
  set symptomBool(bool value) {
    _symptomBool = value;
  }

  String _symptomMaladie = '';
  String get symptomMaladie => _symptomMaladie;
  set symptomMaladie(String value) {
    _symptomMaladie = value;
  }

  String _symptom = '';
  String get symptom => _symptom;
  set symptom(String value) {
    _symptom = value;
  }

  String _symptomIntensity = '';
  String get symptomIntensity => _symptomIntensity;
  set symptomIntensity(String value) {
    _symptomIntensity = value;
  }

  String _symptomTrigger = '';
  String get symptomTrigger => _symptomTrigger;
  set symptomTrigger(String value) {
    _symptomTrigger = value;
  }

  String _symptomImpact = '';
  String get symptomImpact => _symptomImpact;
  set symptomImpact(String value) {
    _symptomImpact = value;
  }

  String _symptomDate = '';
  String get symptomDate => _symptomDate;
  set symptomDate(String value) {
    _symptomDate = value;
  }

  String _mesureMaladie = '';
  String get mesureMaladie => _mesureMaladie;
  set mesureMaladie(String value) {
    _mesureMaladie = value;
  }

  String _mesureParameter = '';
  String get mesureParameter => _mesureParameter;
  set mesureParameter(String value) {
    _mesureParameter = value;
  }

  String _mesureMesure = '';
  String get mesureMesure => _mesureMesure;
  set mesureMesure(String value) {
    _mesureMesure = value;
  }

  String _mesureDate = '';
  String get mesureDate => _mesureDate;
  set mesureDate(String value) {
    _mesureDate = value;
  }

  bool _mode = false;
  bool get mode => _mode;
  set mode(bool value) {
    _mode = value;
  }

  bool _mode2 = false;
  bool get mode2 => _mode2;
  set mode2(bool value) {
    _mode2 = value;
  }

  String _saisiedate = '';
  String get saisiedate => _saisiedate;
  set saisiedate(String value) {
    _saisiedate = value;
  }

  int _saisieINTAKE = 0;
  int get saisieINTAKE => _saisieINTAKE;
  set saisieINTAKE(int value) {
    _saisieINTAKE = value;
  }

  String _route = '';
  String get route => _route;
  set route(String value) {
    _route = value;
  }

  String _dose = '';
  String get dose => _dose;
  set dose(String value) {
    _dose = value;
  }

  String _doseUnit = '';
  String get doseUnit => _doseUnit;
  set doseUnit(String value) {
    _doseUnit = value;
  }

  String _galenicForm = '';
  String get galenicForm => _galenicForm;
  set galenicForm(String value) {
    _galenicForm = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
