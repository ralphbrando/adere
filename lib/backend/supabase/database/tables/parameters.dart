import '../database.dart';

class ParametersTable extends SupabaseTable<ParametersRow> {
  @override
  String get tableName => 'parameters';

  @override
  ParametersRow createRow(Map<String, dynamic> data) => ParametersRow(data);
}

class ParametersRow extends SupabaseDataRow {
  ParametersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ParametersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get illness => getField<String>('illness');
  set illness(String? value) => setField<String>('illness', value);

  String? get unit => getField<String>('unit');
  set unit(String? value) => setField<String>('unit', value);
}
