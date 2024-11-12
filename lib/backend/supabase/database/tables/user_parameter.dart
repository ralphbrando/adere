import '../database.dart';

class UserParameterTable extends SupabaseTable<UserParameterRow> {
  @override
  String get tableName => 'user_parameter';

  @override
  UserParameterRow createRow(Map<String, dynamic> data) =>
      UserParameterRow(data);
}

class UserParameterRow extends SupabaseDataRow {
  UserParameterRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserParameterTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  String? get parameter => getField<String>('parameter');
  set parameter(String? value) => setField<String>('parameter', value);
}
