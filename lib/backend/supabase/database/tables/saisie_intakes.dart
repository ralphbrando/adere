import '../database.dart';

class SaisieIntakesTable extends SupabaseTable<SaisieIntakesRow> {
  @override
  String get tableName => 'saisie_intakes';

  @override
  SaisieIntakesRow createRow(Map<String, dynamic> data) =>
      SaisieIntakesRow(data);
}

class SaisieIntakesRow extends SupabaseDataRow {
  SaisieIntakesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SaisieIntakesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get userpackage => getField<int>('userpackage');
  set userpackage(int? value) => setField<int>('userpackage', value);

  String? get day => getField<String>('day');
  set day(String? value) => setField<String>('day', value);

  String? get moment => getField<String>('moment');
  set moment(String? value) => setField<String>('moment', value);

  String? get qty => getField<String>('qty');
  set qty(String? value) => setField<String>('qty', value);

  String? get unit => getField<String>('unit');
  set unit(String? value) => setField<String>('unit', value);
}
