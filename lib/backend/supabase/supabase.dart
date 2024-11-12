import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;
import '/flutter_flow/flutter_flow_util.dart';

export 'database/database.dart';
export 'storage/storage.dart';

String _kSupabaseUrl = 'https://fxnidoawdlgbzrdwcoxp.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ4bmlkb2F3ZGxnYnpyZHdjb3hwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjU2MjU2ODksImV4cCI6MjA0MTIwMTY4OX0.PIK-Q170W0JdrIKikyz27zz_ZHI0rRSlMrmTO7Gmkbs';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
