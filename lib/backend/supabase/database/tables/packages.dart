import '../database.dart';

class PackagesTable extends SupabaseTable<PackagesRow> {
  @override
  String get tableName => 'packages';

  @override
  PackagesRow createRow(Map<String, dynamic> data) => PackagesRow(data);
}

class PackagesRow extends SupabaseDataRow {
  PackagesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PackagesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get packageTitle => getField<String>('package_title');
  set packageTitle(String? value) => setField<String>('package_title', value);

  String? get productTitle => getField<String>('product_title');
  set productTitle(String? value) => setField<String>('product_title', value);

  String get packageId => getField<String>('package_id')!;
  set packageId(String value) => setField<String>('package_id', value);

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);
}
