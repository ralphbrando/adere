import '../database.dart';

class WikiPostsTable extends SupabaseTable<WikiPostsRow> {
  @override
  String get tableName => 'wiki_posts';

  @override
  WikiPostsRow createRow(Map<String, dynamic> data) => WikiPostsRow(data);
}

class WikiPostsRow extends SupabaseDataRow {
  WikiPostsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WikiPostsTable();

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

  int? get wikicategory => getField<int>('wikicategory');
  set wikicategory(int? value) => setField<int>('wikicategory', value);
}
