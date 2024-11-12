import '../database.dart';

class SaisieMoodsTable extends SupabaseTable<SaisieMoodsRow> {
  @override
  String get tableName => 'saisie_moods';

  @override
  SaisieMoodsRow createRow(Map<String, dynamic> data) => SaisieMoodsRow(data);
}

class SaisieMoodsRow extends SupabaseDataRow {
  SaisieMoodsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SaisieMoodsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  int? get mood => getField<int>('mood');
  set mood(int? value) => setField<int>('mood', value);
}
