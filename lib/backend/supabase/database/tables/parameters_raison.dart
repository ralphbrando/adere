import '../database.dart';

class ParametersRaisonTable extends SupabaseTable<ParametersRaisonRow> {
  @override
  String get tableName => 'parameters_raison';

  @override
  ParametersRaisonRow createRow(Map<String, dynamic> data) =>
      ParametersRaisonRow(data);
}

class ParametersRaisonRow extends SupabaseDataRow {
  ParametersRaisonRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ParametersRaisonTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
