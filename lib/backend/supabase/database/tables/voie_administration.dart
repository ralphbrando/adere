import '../database.dart';

class VoieAdministrationTable extends SupabaseTable<VoieAdministrationRow> {
  @override
  String get tableName => 'voie_administration';

  @override
  VoieAdministrationRow createRow(Map<String, dynamic> data) =>
      VoieAdministrationRow(data);
}

class VoieAdministrationRow extends SupabaseDataRow {
  VoieAdministrationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VoieAdministrationTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);
}
