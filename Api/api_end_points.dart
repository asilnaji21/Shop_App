class ApiEndPoints {
  ApiEndPoints._();
  static const baseUrl = "https://backend-shop-apps.herokuapp.com/api/";
  static const signUp = "auth/signup";
  static const logIn = "auth/login";
  static const verfiyNumber = "auth/verify-mobile";
  static const resendCode = "auth/resend-code";
  static const forgotPassword = "auth/forget";

  static const categoryList = "category/all?offset=0&limit=10";
  static const banners = "category/banners";

  static const connectTimeout = 15000;
  static const receiveTimeout = 15000;
}
