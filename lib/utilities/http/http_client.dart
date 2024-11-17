import 'package:http/http.dart' as http;
import 'dart:convert';

class SHttpHelper {

  static const String _baseUrl = "https:";

  //Get request
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _hadleResponse(response);
  }

  //Post request
  static Future<Map<String, dynamic>> post(String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.decode(data),
    );
    return _hadleResponse(response);
  }

  //Put request
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.put(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.decode(data),
    );
    return _hadleResponse(response);
  }

  //delete request
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    final response = await http.delete(Uri.parse('$_baseUrl/$endpoint'));
    return _hadleResponse(response);
  }

  //Handle http response
  static Map<String, dynamic> _hadleResponse(http.Response response) {
    if(response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}