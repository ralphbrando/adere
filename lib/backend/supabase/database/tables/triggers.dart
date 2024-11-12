import '../database.dart';

class TriggersTable extends SupabaseTable<TriggersRow> {
  @override
  String get tableName => 'triggers';

  @override
  TriggersRow createRow(Map<String, dynamic> data) => TriggersRow(data);
}

class TriggersRow extends SupabaseDataRow {
  TriggersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TriggersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
