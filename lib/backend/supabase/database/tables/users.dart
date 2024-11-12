import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get age => getField<String>('age');
  set age(String? value) => setField<String>('age', value);

  String? get sex => getField<String>('sex');
  set sex(String? value) => setField<String>('sex', value);

  String? get postcode => getField<String>('postcode');
  set postcode(String? value) => setField<String>('postcode', value);

  double? get weight => getField<double>('weight');
  set weight(double? value) => setField<double>('weight', value);

  String? get height => getField<String>('height');
  set height(String? value) => setField<String>('height', value);

  String? get doctor => getField<String>('doctor');
  set doctor(String? value) => setField<String>('doctor', value);

  String? get pharmacist => getField<String>('pharmacist');
  set pharmacist(String? value) => setField<String>('pharmacist', value);

  int? get onboardingLevel => getField<int>('onboarding_level');
  set onboardingLevel(int? value) => setField<int>('onboarding_level', value);

  int? get onboardingQuestionLevel =>
      getField<int>('onboarding_question_level');
  set onboardingQuestionLevel(int? value) =>
      setField<int>('onboarding_question_level', value);

  String? get questionnaireSavezvousetreadherent =>
      getField<String>('questionnaire_savezvousetreadherent');
  set questionnaireSavezvousetreadherent(String? value) =>
      setField<String>('questionnaire_savezvousetreadherent', value);

  String? get questionnaireAdherencecorrect30a50 =>
      getField<String>('questionnaire_adherencecorrect30a50');
  set questionnaireAdherencecorrect30a50(String? value) =>
      setField<String>('questionnaire_adherencecorrect30a50', value);

  String? get questionnaireAdherencemoinsbonnemaladiesanssymptome =>
      getField<String>('questionnaire_adherencemoinsbonnemaladiesanssymptome');
  set questionnaireAdherencemoinsbonnemaladiesanssymptome(String? value) =>
      setField<String>(
          'questionnaire_adherencemoinsbonnemaladiesanssymptome', value);

  String? get questionnaireRespecterhoraireestfondamental =>
      getField<String>('questionnaire_respecterhoraireestfondamental');
  set questionnaireRespecterhoraireestfondamental(String? value) =>
      setField<String>('questionnaire_respecterhoraireestfondamental', value);

  String? get questionnaireJamaisstoppedesonproprechef =>
      getField<String>('questionnaire_jamaisstoppedesonproprechef');
  set questionnaireJamaisstoppedesonproprechef(String? value) =>
      setField<String>('questionnaire_jamaisstoppedesonproprechef', value);

  String? get questionnaireInformecorrectementtraitement =>
      getField<String>('questionnaire_informecorrectementtraitement');
  set questionnaireInformecorrectementtraitement(String? value) =>
      setField<String>('questionnaire_informecorrectementtraitement', value);

  String? get questionnaireInformecorrectementmaladie =>
      getField<String>('questionnaire_informecorrectementmaladie');
  set questionnaireInformecorrectementmaladie(String? value) =>
      setField<String>('questionnaire_informecorrectementmaladie', value);

  String? get questionnaireAvezvousbesoininformepriseencharge =>
      getField<String>('questionnaire_avezvousbesoininformepriseencharge');
  set questionnaireAvezvousbesoininformepriseencharge(String? value) =>
      setField<String>(
          'questionnaire_avezvousbesoininformepriseencharge', value);

  String? get questionnaireSavezvoustrouverinfopertinentesante =>
      getField<String>('questionnaire_savezvoustrouverinfopertinentesante');
  set questionnaireSavezvoustrouverinfopertinentesante(String? value) =>
      setField<String>(
          'questionnaire_savezvoustrouverinfopertinentesante', value);

  String? get questionnaireInformerapidementsurnouveaute =>
      getField<String>('questionnaire_informerapidementsurnouveaute');
  set questionnaireInformerapidementsurnouveaute(String? value) =>
      setField<String>('questionnaire_informerapidementsurnouveaute', value);
}
