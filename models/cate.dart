class CategoryDataViewModel {
  String? id;
  String? name;
  String? image;

  CategoryDataViewModel({this.id, this.image, this.name});
  CategoryDataViewModel.fromJson(Map<String,dynamic>json){
id=json["_id"];
name=json["name"];
image=json["image"];
  }
}
