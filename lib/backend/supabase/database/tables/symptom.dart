import '../database.dart';

class SymptomTable extends SupabaseTable<SymptomRow> {
  @override
  String get tableName => 'symptom';

  @override
  SymptomRow createRow(Map<String, dynamic> data) => SymptomRow(data);
}

class SymptomRow extends SupabaseDataRow {
  SymptomRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SymptomTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);
}
