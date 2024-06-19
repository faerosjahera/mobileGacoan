import 'package:dio/dio.dart';
import '../models/category.dart';
import '../auth_service/auth_service.dart';

class CategoryService {
  final Dio _dio;

  CategoryService()
      : _dio = Dio(
          BaseOptions(
            baseUrl: 'http://127.0.0.1:8000/api',
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer ${AuthService.token}',
            },
          ),
        );

  Future<List<Category>> getCategories() async {
    try {
      final response = await _dio.get('/categories');
      final List<dynamic> data = response.data;
      return data.map((categoryJson) => Category.fromJson(categoryJson)).toList();
    } catch (e) {
      print('Error in getCategories: $e');
      throw Exception('Failed to load categories: $e');
    }
  }

  Future<Category> createCategory(String name, String photoPath) async {
    try {
      // Make sure the filename extraction is correct
      String fileName = photoPath.split('').last;
      FormData formData = FormData.fromMap({
        'name': name,
        'photo': await MultipartFile.fromFile(photoPath, filename: fileName),
      });

      final response = await _dio.post('/categories', data: formData);
      return Category.fromJson(response.data);
    } catch (e) {
      print('Error in createCategory: $e');
      throw Exception('Failed to create category: $e');
    }
  }

  Future<Category> getCategory(int id) async {
    try {
      final response = await _dio.get('/categories/$id');
      return Category.fromJson(response.data);
    } catch (e) {
      print('Error in getCategory: $e');
      throw Exception('Failed to load category: $e');
    }
  }

  Future<Category> updateCategory(int id, String name, String? photoPath) async {
    try {
      FormData formData = FormData.fromMap({
        'name': name,
        if (photoPath != null) 'photo': await MultipartFile.fromFile(photoPath, filename: photoPath.split('/').last),
      });

      final response = await _dio.put('/categories/$id', data: formData);
      return Category.fromJson(response.data);
    } catch (e) {
      print('Error in updateCategory: $e');
      throw Exception('Failed to update category: $e');
    }
  }

  Future<void> deleteCategory(int id) async {
    try {
      final response = await _dio.delete('/categories/$id');
      if (response.statusCode != 200) {
        throw Exception('Failed to delete category: ${response.statusCode}');
      }
    } catch (e) {
      print('Error in deleteCategory: $e');
      throw Exception('Failed to delete category: $e');
    }
  }
}
