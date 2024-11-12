import '../database.dart';

class SaisieIntakesEventTable extends SupabaseTable<SaisieIntakesEventRow> {
  @override
  String get tableName => 'saisie_intakes_event';

  @override
  SaisieIntakesEventRow createRow(Map<String, dynamic> data) =>
      SaisieIntakesEventRow(data);
}

class SaisieIntakesEventRow extends SupabaseDataRow {
  SaisieIntakesEventRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SaisieIntakesEventTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get saisieintakes => getField<int>('saisieintakes');
  set saisieintakes(int? value) => setField<int>('saisieintakes', value);

  bool? get done => getField<bool>('done');
  set done(bool? value) => setField<bool>('done', value);

  String? get question => getField<String>('question');
  set question(String? value) => setField<String>('question', value);

  String? get date => getField<String>('date');
  set date(String? value) => setField<String>('date', value);
}
