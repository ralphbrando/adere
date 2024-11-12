import '../database.dart';

class SaisieParametersTable extends SupabaseTable<SaisieParametersRow> {
  @override
  String get tableName => 'saisie_parameters';

  @override
  SaisieParametersRow createRow(Map<String, dynamic> data) =>
      SaisieParametersRow(data);
}

class SaisieParametersRow extends SupabaseDataRow {
  SaisieParametersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SaisieParametersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  String? get date => getField<String>('date');
  set date(String? value) => setField<String>('date', value);

  String? get parameter => getField<String>('parameter');
  set parameter(String? value) => setField<String>('parameter', value);

  String? get illness => getField<String>('illness');
  set illness(String? value) => setField<String>('illness', value);

  String? get value => getField<String>('value');
  set value(String? value) => setField<String>('value', value);
}
