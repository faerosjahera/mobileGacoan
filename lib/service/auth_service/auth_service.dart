import 'package:dio/dio.dart';

class AuthService {
  static String? token;
  static User? currentUser;

  bool isLoggedIn() {
    return token != null && token!.isNotEmpty;
  }

  Future<bool> login({
    required String email,
    required String password,
  }) async {
    try {
      var response = await Dio().post(
        "http://127.0.0.1:8000/api/login",
        options: Options(
          headers: {
            "Content-type": "application/json",
          },
        ),
        data: {
          "email": email,
          "password": password,
        },
      );
      Map<String, dynamic> obj = response.data;
      token = obj["data"]["token"];
      return true;
    } catch (e) {
      print('Error in login: $e');
      return false;
    }
  }

  Future<bool> register({
    required String name,
    required String alamat,
    required String phone,
    required String email,
    required String password,
  }) async {
    try {
      var response = await Dio().post(
        "http://127.0.0.1:8000/api/register",
        options: Options(
          headers: {
            "Content-type": "application/json",
          },
        ),
        data: {
          "name": name,
          "alamat": alamat,
          "phone": phone,
          "email": email,
          "password": password,
        },
      );
      return response.statusCode == 200;
    } catch (e) {
      print('Error in register: $e');
      return false;
    }
  }

  Future<bool> logout() async {
    try {
      var response = await Dio().post(
        "http://127.0.0.1:8000/api/logout",
        options: Options(
          headers: {
            "Content-type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );
      if (response.statusCode == 200) {
        clearToken();
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print('Error in logout: $e');
      return false;
    }
  }

  void clearToken() {
    token = null;
    currentUser = null; // Clear currentUser when token is cleared
  }

  Future<User?> getCurrentUser() async {
    try {
      var response = await Dio().get(
        "http://127.0.0.1:8000/api/user",
        options: Options(
          headers: {
            "Content-type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );
      if (response.statusCode == 200) {
        print('Response data: ${response.data}');
        if (response.data != null && response.data['data'] != null) {
          return User.fromJson(response.data['data']);
        } else {
          print('No user data in response');
          return null;
        }
      } else {
        print('Failed response status: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error in getCurrentUser: $e');
      throw Exception('Failed to get current user: $e');
    }
  }

}
class User {
  final String name;
  final String email;

  User({required this.name, required this.email});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      email: json['email'],
    );
  }
}
