import '../database.dart';

class GalenicFormsTable extends SupabaseTable<GalenicFormsRow> {
  @override
  String get tableName => 'galenic_forms';

  @override
  GalenicFormsRow createRow(Map<String, dynamic> data) => GalenicFormsRow(data);
}

class GalenicFormsRow extends SupabaseDataRow {
  GalenicFormsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GalenicFormsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);
}
