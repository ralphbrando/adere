import '../database.dart';

class ParameterWhenTable extends SupabaseTable<ParameterWhenRow> {
  @override
  String get tableName => 'parameter_when';

  @override
  ParameterWhenRow createRow(Map<String, dynamic> data) =>
      ParameterWhenRow(data);
}

class ParameterWhenRow extends SupabaseDataRow {
  ParameterWhenRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ParameterWhenTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get parameter => getField<int>('parameter');
  set parameter(int? value) => setField<int>('parameter', value);

  String? get when => getField<String>('when');
  set when(String? value) => setField<String>('when', value);
}
