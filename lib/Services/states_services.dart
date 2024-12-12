import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Model/WorldStatesModel.dart';
import 'Utilities/app_url.dart';

class StatesServices {
  Future<WorldStatesModel> fetchWorldStatesRecords() async {
    final response = await http.get(Uri.parse(AppUrl.getWorldStatesApi()));

    if (response.statusCode == 200) {
      // Decode the response body to a Map and pass it to fromJson
      return WorldStatesModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load world states data');
    }
  }

  Future<List<dynamic>> countriesListApi() async {
    final response = await http.get(Uri.parse(AppUrl.getCountriesList()));

    if (response.statusCode == 200) {
      // Decode the JSON response to a list of dynamic objects
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load countries data');
    }
  }
}
