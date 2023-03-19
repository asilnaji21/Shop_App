class Info {
  int? code;
  bool? status;
  String? message;
  String? token;
  Data? data;

  Info({this.code, this.status, this.message, this.token, this.data});

  Info.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    message = json['message'];
    token = json['token'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['status'] = this.status;
    data['message'] = this.message;
    data['token'] = this.token;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? sId;
  Null? image;
  String? mobile;
  String? fullName;
  String? email;
  bool? isVerified;

  Data(
      {this.sId,
      this.image,
      this.mobile,
      this.fullName,
      this.email,
      this.isVerified});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    image = json['image'];
    mobile = json['mobile'];
    fullName = json['fullName'];
    email = json['email'];
    isVerified = json['isVerified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['image'] = this.image;
    data['mobile'] = this.mobile;
    data['fullName'] = this.fullName;
    data['email'] = this.email;
    data['isVerified'] = this.isVerified;
    return data;
  }
}
