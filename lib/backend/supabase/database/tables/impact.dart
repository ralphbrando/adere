import '../database.dart';

class ImpactTable extends SupabaseTable<ImpactRow> {
  @override
  String get tableName => 'impact';

  @override
  ImpactRow createRow(Map<String, dynamic> data) => ImpactRow(data);
}

class ImpactRow extends SupabaseDataRow {
  ImpactRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ImpactTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
