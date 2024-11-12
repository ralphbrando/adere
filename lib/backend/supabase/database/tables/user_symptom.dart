import '../database.dart';

class UserSymptomTable extends SupabaseTable<UserSymptomRow> {
  @override
  String get tableName => 'user_symptom';

  @override
  UserSymptomRow createRow(Map<String, dynamic> data) => UserSymptomRow(data);
}

class UserSymptomRow extends SupabaseDataRow {
  UserSymptomRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserSymptomTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  String? get symptom => getField<String>('symptom');
  set symptom(String? value) => setField<String>('symptom', value);
}
