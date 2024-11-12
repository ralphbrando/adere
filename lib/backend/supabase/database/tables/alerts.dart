import '../database.dart';

class AlertsTable extends SupabaseTable<AlertsRow> {
  @override
  String get tableName => 'alerts';

  @override
  AlertsRow createRow(Map<String, dynamic> data) => AlertsRow(data);
}

class AlertsRow extends SupabaseDataRow {
  AlertsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AlertsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  String? get content => getField<String>('content');
  set content(String? value) => setField<String>('content', value);

  String? get date => getField<String>('date');
  set date(String? value) => setField<String>('date', value);
}
