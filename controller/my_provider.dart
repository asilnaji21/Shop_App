import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../Api/api_utils.dart';
import '../Api/dio_service.dart';
import '../helper/navigator.dart';
import '../helper/routes.dart';
import '../models/cate.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../models/categories.dart';
import '../models/uer_model.dart';

class NavigationController with ChangeNotifier {
  var selectedIndex = 0;
  var isLoading = false;
  void changeIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }

//Sign Up
  final txtName = TextEditingController();
  final txtPhone = TextEditingController();
  final txtEmail = TextEditingController();
  final txtPassword = TextEditingController();

  late Info userData;

  getUser() async {
    Response response = await ApiUtils().postUer(
        email: txtEmail.text,
        mobile: txtPhone.text,
        fullName: txtName.text,
        password: txtPassword.text);

    Info result = Info.fromJson(response.data);

    if (result.code == 201) {
      userData = result;
      print(userData);
      NavigationConfiguration.navigationConfiguration
          .navigateToo(Routes.forgotPasswordRoute);
    }
  }

  /////////////////////////////// log in
  final textEmail = TextEditingController(text: "example@gmail.com");
  final textPassword = TextEditingController();

  late Info userLogin;
  loginUser() async {
    Response res = await ApiUtils()
        .postUerLog(email: textEmail.text, password: textPassword.text);
    Info resultLog = Info.fromJson(res.data);
    if (resultLog.code == 200) {
      userLogin = resultLog;

      print(userLogin);
      NavigationConfiguration.navigationConfiguration
          .navigateToo(Routes.bottomNavBar);
    }
  }
  // verfiyphone

  late Info verfiy;
  final textNumber = TextEditingController();
  verificationNumber() async {
    Response responseVerfiy =
        await ApiUtils().putverfiy(code: "1234", number: textNumber.text);
    Info resultverfiy = Info.fromJson(responseVerfiy.data);

    if (resultverfiy.code == 200) {
      verfiy = resultverfiy;
      print(verfiy);
      NavigationConfiguration.navigationConfiguration
          .navigateToo(Routes.forgotPasswordRoutePhone);
    }
  }

  // forgot password
  late Info forgot;
  final textEmailForgot = TextEditingController();
  forgotUserPass() async {
    Response responseForgot =
        await ApiUtils().forgotPassword(email: textEmailForgot.text);
    Info resultForgot = Info.fromJson(responseForgot.data);
    if (resultForgot.code == 200) {
      forgot = resultForgot;
      print(forgot);
      NavigationConfiguration.navigationConfiguration
          .navigateToo(Routes.createNewPass);
    }
  }

  MyProvider() {
    getcategories();
  }

  List<CategoryDataViewModel> categoryList = [];
  var url =
      "https://backend-shop-apps.herokuapp.com/api/category/all?offset=0&limit=10";

  getcategories() async {
    List<CategoryDataViewModel> newProducts = await DioService().getMethod(url);
    categoryList = newProducts;

    notifyListeners();
  }
}

  // List<CategoryDataViewModel> categoryList = [];
  // getcategories() async {
  //   List<CategoryDataViewModel>  getCategory = await ApiUtils().getAllCategory();

  //   categoryList = getCategory;

  //   print(categoryList);
  //   notifyListeners();
  // }
