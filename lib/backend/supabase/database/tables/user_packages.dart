import '../database.dart';

class UserPackagesTable extends SupabaseTable<UserPackagesRow> {
  @override
  String get tableName => 'user_packages';

  @override
  UserPackagesRow createRow(Map<String, dynamic> data) => UserPackagesRow(data);
}

class UserPackagesRow extends SupabaseDataRow {
  UserPackagesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserPackagesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  String? get package => getField<String>('package');
  set package(String? value) => setField<String>('package', value);

  String? get boiteDelivree => getField<String>('boite_delivree');
  set boiteDelivree(String? value) => setField<String>('boite_delivree', value);

  String? get pillsParBoite => getField<String>('pills_par_boite');
  set pillsParBoite(String? value) =>
      setField<String>('pills_par_boite', value);

  String? get quelleMaladie => getField<String>('quelle_maladie');
  set quelleMaladie(String? value) => setField<String>('quelle_maladie', value);

  int? get takeMonday => getField<int>('take_monday');
  set takeMonday(int? value) => setField<int>('take_monday', value);

  int? get takeTuesday => getField<int>('take_tuesday');
  set takeTuesday(int? value) => setField<int>('take_tuesday', value);

  int? get takeWednesday => getField<int>('take_wednesday');
  set takeWednesday(int? value) => setField<int>('take_wednesday', value);

  int? get takeThursday => getField<int>('take_thursday');
  set takeThursday(int? value) => setField<int>('take_thursday', value);

  int? get takeFriday => getField<int>('take_friday');
  set takeFriday(int? value) => setField<int>('take_friday', value);

  int? get takeSaturday => getField<int>('take_saturday');
  set takeSaturday(int? value) => setField<int>('take_saturday', value);

  int? get takeSunday => getField<int>('take_sunday');
  set takeSunday(int? value) => setField<int>('take_sunday', value);

  String? get treatmentStart => getField<String>('treatment_start');
  set treatmentStart(String? value) =>
      setField<String>('treatment_start', value);

  String? get treatmentEnd => getField<String>('treatment_end');
  set treatmentEnd(String? value) => setField<String>('treatment_end', value);

  String? get rappel => getField<String>('rappel');
  set rappel(String? value) => setField<String>('rappel', value);

  String? get route => getField<String>('route');
  set route(String? value) => setField<String>('route', value);

  String? get doseUnit => getField<String>('doseUnit');
  set doseUnit(String? value) => setField<String>('doseUnit', value);

  String? get dose => getField<String>('dose');
  set dose(String? value) => setField<String>('dose', value);

  String? get galenicForm => getField<String>('galenicForm');
  set galenicForm(String? value) => setField<String>('galenicForm', value);
}
