import 'package:shop_app/Api_get/api_controller.dart';

import '../Api/api_end_points.dart';
import '../models/uer_model.dart';

abstract class UserRemoteDataSource {
  Future<Info> userPost();
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  ApiControlling apiController;

  UserRemoteDataSourceImpl({required this.apiController});

  @override
  Future<Info> userPost() async {
    final response = await apiController.get(
      ApiEndPoints.signUp,
    );
    return Info.fromJson(response);
  }
}
