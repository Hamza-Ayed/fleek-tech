import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseController extends GetxController {
// Get a reference your Supabase client
  final supabase = Supabase.instance.client;

  Future<List<dynamic>> getData(String tabel) async {
    final response = await supabase.from(tabel).select();
    return response.data;
  }

  Future<void> insertData(String tabel, Map data) async {
    final response = await supabase.from(tabel).insert(data);
    print(response);
  }
}
