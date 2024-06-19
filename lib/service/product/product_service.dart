import 'package:dio/dio.dart';
import '../models/product.dart';
import '../auth_service/auth_service.dart';

class ProductService {
  final Dio _dio;

  ProductService()
      : _dio = Dio(
          BaseOptions(
            baseUrl: 'http://127.0.0.1:8000/api',
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer ${AuthService.token}',
            },
          ),
        );

  Future<List<Product>> getProducts() async {
    try {
      final response = await _dio.get('/products');
      final List<dynamic> data = response.data;
      return data.map((productJson) => Product.fromJson(productJson)).toList();
    } catch (e) {
      print('Error in getProducts: $e');
      throw Exception('Failed to load products: $e');
    }
  }

  Future<Product> createProduct(Map<String, dynamic> productData) async {
    try {
      FormData formData = FormData.fromMap(productData);

      final response = await _dio.post('/products', data: formData);
      return Product.fromJson(response.data);
    } catch (e) {
      print('Error in createProduct: $e');
      throw Exception('Failed to create product: $e');
    }
  }

  Future<Product> getProduct(int id) async {
    try {
      final response = await _dio.get('/products/$id');
      return Product.fromJson(response.data);
    } catch (e) {
      print('Error in getProduct: $e');
      throw Exception('Failed to load product: $e');
    }
  }

  Future<Product> updateProduct(int id, Map<String, dynamic> productData) async {
    try {
      FormData formData = FormData.fromMap(productData);

      final response = await _dio.put('/products/$id', data: formData);
      return Product.fromJson(response.data);
    } catch (e) {
      print('Error in updateProduct: $e');
      throw Exception('Failed to update product: $e');
    }
  }

  Future<void> deleteProduct(int id) async {
    try {
      final response = await _dio.delete('/products/$id');
      if (response.statusCode != 200) {
        throw Exception('Failed to delete product: ${response.statusCode}');
      }
    } catch (e) {
      print('Error in deleteProduct: $e');
      throw Exception('Failed to delete product: $e');
    }
  }

  Future<List<Product>> getProductsByCategory(int categoryId) async {
    try {
      final response = await _dio.get('/products/category/$categoryId');
      final List<dynamic> data = response.data;
      return data.map((productJson) => Product.fromJson(productJson)).toList();
    } catch (e) {
      print('Error in getProductsByCategory: $e');
      throw Exception('Failed to load products by category: $e');
    }
  }
}
