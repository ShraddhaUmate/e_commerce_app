import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product_model.dart';

class ApiService {
  static Future<List<String>> fetchCategories() async {
    final response = await http.get(Uri.parse('https://fakestoreapi.com/products/categories'));
    return List<String>.from(json.decode(response.body));
  }

  static Future<List<Product>> fetchProductsByCategory(String category) async {
    final response = await http.get(Uri.parse('https://fakestoreapi.com/products/category/$category'));
    return (json.decode(response.body) as List).map((json) => Product.fromJson(json)).toList();
  }

  static Future<Product> fetchProductDetails(int id) async {
    final response = await http.get(Uri.parse('https://fakestoreapi.com/products/$id'));
    return Product.fromJson(json.decode(response.body));
  }
}
