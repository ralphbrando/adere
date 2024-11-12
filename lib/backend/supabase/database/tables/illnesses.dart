import '../database.dart';

class IllnessesTable extends SupabaseTable<IllnessesRow> {
  @override
  String get tableName => 'illnesses';

  @override
  IllnessesRow createRow(Map<String, dynamic> data) => IllnessesRow(data);
}

class IllnessesRow extends SupabaseDataRow {
  IllnessesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => IllnessesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);
}
