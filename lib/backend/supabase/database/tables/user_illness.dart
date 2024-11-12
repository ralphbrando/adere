import '../database.dart';

class UserIllnessTable extends SupabaseTable<UserIllnessRow> {
  @override
  String get tableName => 'user_illness';

  @override
  UserIllnessRow createRow(Map<String, dynamic> data) => UserIllnessRow(data);
}

class UserIllnessRow extends SupabaseDataRow {
  UserIllnessRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserIllnessTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
