import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String apiUrl = 'https://example.com/api';

  Future<Map<String, dynamic>> fetchProductDetails(String endpoint) async {
    final response = await http.get(Uri.parse('$apiUrl/$endpoint'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load product details');
    }
  }
}