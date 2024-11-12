import '../database.dart';

class ProgrammesTable extends SupabaseTable<ProgrammesRow> {
  @override
  String get tableName => 'programmes';

  @override
  ProgrammesRow createRow(Map<String, dynamic> data) => ProgrammesRow(data);
}

class ProgrammesRow extends SupabaseDataRow {
  ProgrammesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProgrammesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get sequenceIdLaravel => getField<int>('sequence_id_laravel');
  set sequenceIdLaravel(int? value) =>
      setField<int>('sequence_id_laravel', value);

  int? get position => getField<int>('position');
  set position(int? value) => setField<int>('position', value);
}
