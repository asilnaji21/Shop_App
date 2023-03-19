import 'package:dio/dio.dart';
import 'api_end_points.dart';

class ApiUtils {
  final Dio dioClient = Dio();

  ApiUtils() {
    dioClient
      ..options.baseUrl = ApiEndPoints.baseUrl
      // ..options.connectTimeout = ApiEndPoints.connectTimeout
      // ..options.receiveTimeout = ApiEndPoints.receiveTimeout
      ..options.responseType = ResponseType.json;
  }
  Future<Response> postUer(
      {required String email,
      required String mobile,
      required String fullName,
      required String password}) async {
    try {
      Response response = await dioClient.post(ApiEndPoints.signUp, data: {
        'email': email,
        'mobile': mobile,
        'fullName': fullName,
        'password': password,
      });

      print(response);
      return response;
    } catch (e) {
      print('error e');
      rethrow;
    }
  }

  Future<Response> postUerLog({
    required String email,
    required String password,
  }) async {
    try {
      Response response = await dioClient.post(ApiEndPoints.logIn, data: {
        'email': email,
        'password': password,
      });
      print(response);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> putverfiy(
      {required String code, required String number}) async {
    try {
      Response response = await dioClient.put(ApiEndPoints.verfiyNumber, data: {
        "code": code,
        "mobile": number,
      });
      print(response);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> forgotPassword({
    required String email,
  }) async {
    try {
      Response response =
          await dioClient.post(ApiEndPoints.forgotPassword, data: {
        'email': email,
      });
      print(response);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getAllCategory() async {
    try {
      Response response = await dioClient.get(ApiEndPoints.categoryList);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  
}












































































// Future<List<Banners>> fetchArticleByCategorie() async {
  //   Response response = await dioClient
  //       .get('https://backend-shop-apps.herokuapp.com/api/category/all?offset=0&limit=10');
  //   return (response.data).map((x) => Banners.fromJson(x)).toList();
  // }
  //  Future<List<Category>> fetchcat() async {
  //   Response response = await DioService().getMethod(url);

  //   return (response.data).map((x) => Category.fromJson(x)).toList();
  // }