import 'package:shop_app/models/cate.dart';

class CategoryListViewModel {
  String? code;
  bool? status;
  String? message;
  List<CategoryDataViewModel>? categorydata;

  CategoryListViewModel(
      {this.categorydata, this.code, this.message, this.status});

  CategoryListViewModel.fromJson(Map<String, dynamic> json) {
    code = json["code"];
    status = json["status"];
    message = json["message"];
    categorydata = (json["data"] as List)
        .map((final element) => CategoryDataViewModel.fromJson(element))
        .toList();
  }
}
