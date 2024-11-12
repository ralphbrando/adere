import '../database.dart';

class AlertTypesTable extends SupabaseTable<AlertTypesRow> {
  @override
  String get tableName => 'alert_types';

  @override
  AlertTypesRow createRow(Map<String, dynamic> data) => AlertTypesRow(data);
}

class AlertTypesRow extends SupabaseDataRow {
  AlertTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AlertTypesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
