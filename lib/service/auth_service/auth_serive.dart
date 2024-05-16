import 'package:dio/dio.dart';

class AuthService {
  static String? token;

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
      // Jika response status adalah 200 OK, anggaplah registrasi berhasil
      return response.statusCode == 200;
    } catch (e) {
      print('Error in register: $e');
      return false;
    }
  }

  Future<bool> logout() async {
    try {
      var response = await Dio().get(
        "http://127.0.0.1:8000/api/logout",
        options: Options(
          headers: {
            "Content-type": "application/json",
            "Authorization":
                "Bearer $token", // Menggunakan token untuk autentikasi
          },
        ),
      );
      // Jika response status adalah 200 OK, anggaplah logout berhasil
      return response.statusCode == 200;
    } catch (e) {
      print('Error in logout: $e');
      return false;
    }
  }
}
