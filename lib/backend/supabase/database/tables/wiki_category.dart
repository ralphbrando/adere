import '../database.dart';

class WikiCategoryTable extends SupabaseTable<WikiCategoryRow> {
  @override
  String get tableName => 'wiki_category';

  @override
  WikiCategoryRow createRow(Map<String, dynamic> data) => WikiCategoryRow(data);
}

class WikiCategoryRow extends SupabaseDataRow {
  WikiCategoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WikiCategoryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get icon => getField<String>('icon');
  set icon(String? value) => setField<String>('icon', value);
}
