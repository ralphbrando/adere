import '../database.dart';

class SaisieSymptomsTable extends SupabaseTable<SaisieSymptomsRow> {
  @override
  String get tableName => 'saisie_symptoms';

  @override
  SaisieSymptomsRow createRow(Map<String, dynamic> data) =>
      SaisieSymptomsRow(data);
}

class SaisieSymptomsRow extends SupabaseDataRow {
  SaisieSymptomsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SaisieSymptomsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  String? get illness => getField<String>('illness');
  set illness(String? value) => setField<String>('illness', value);

  String? get intensity => getField<String>('intensity');
  set intensity(String? value) => setField<String>('intensity', value);

  String? get trigger => getField<String>('trigger');
  set trigger(String? value) => setField<String>('trigger', value);

  String? get impact => getField<String>('impact');
  set impact(String? value) => setField<String>('impact', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);

  String? get symptom => getField<String>('symptom');
  set symptom(String? value) => setField<String>('symptom', value);

  String? get date => getField<String>('date');
  set date(String? value) => setField<String>('date', value);

  int? get mood => getField<int>('mood');
  set mood(int? value) => setField<int>('mood', value);
}
