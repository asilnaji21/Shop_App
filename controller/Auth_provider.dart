// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:shop_app/Api/api_utils.dart';
// import 'package:shop_app/helper/navigator.dart';
// import 'package:shop_app/models/uer_model.dart';

// import '../Api/dio_service.dart';
// import '../helper/routes.dart';
// import '../models/cate.dart';

// class AuthProvider with ChangeNotifier {
//   static final txtName = TextEditingController();
//   static final txtPhone = TextEditingController();
//   static final txtEmail = TextEditingController();
//   static final txtPassword = TextEditingController();
//   // static final txtConfirmPassword = TextEditingController();
//   late Info userData;
//   getUser() async {
//     Response response = await ApiUtils().postUer(
//         email: txtEmail.text,
//         mobile: txtPhone.text,
//         fullName: txtName.text,
//         password: txtPassword.text);
//     print('afterrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr');

//     Info result = Info.fromJson(response.data);
//     print('beeeeeeeeeeeeefore');
//     if (result.code == 201) {
//       print('hereeeeeeeeeeeeeeeeeee');
//       userData = result;
//       NavigationConfiguration.navigationConfiguration
//           .navigateToo(Routes.loginRoute);
//     } else {
//       print('4000');
//     }
//   }

//   List<CategoryDataViewModel> category = [];
//   var url =
//       "https://backend-shop-apps.herokuapp.com/api/category/all?offset=0&limit=10";

//   getcategories() async {
//     var response = await DioService().getMethod(url);
//     return response;
//   }
// }
