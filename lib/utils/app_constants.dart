class AppConstants {
  static const String APP_NAME = "DBFood";
  static const int APP_VERSION = 1;

//dependencies
  // static const String BASE_URL = "https://mvs.bslmeiyu.com";
  // static const String BASE_URL = "http://restorant.my.id";
  static const String BASE_URL = "http://127.0.0.1:8000";

  // static const String BASE_URL_MEIYI = "https://mvs.bslmeiyu.com";
  static const String POPULAR_PRODUCT_URI = "/api/v1/products/popular";
  static const String RECOMMENDED_PRODUCT_URI = "/api/v1/products/recommended";
  static const String DRINKS_URI = "/api/v1/products/drinks";
  static const String UPLOAD_URL = '/uploads/';

  //user and auth end points
  static const String REGISTRATION_URI = "/api/v1/auth/register";
  static const String LOGIN_URI = "/api/v1/auth/login";

  static const String USER_INFO_URI = "/api/v1/customer/info";

  /*
  Orders
  */
  static const String PLACE_ORDER_URI = "/api/v1/customer/order/place";
  static const String ORDER_LIST_URI = "/api/v1/customer/order/list";
  static const String TOKEN = "DBToken";
  static const String PHONE = "";
  static const String PASSWORD = "";
  static const String CART_LIST = "cart-list";
  static const String CART_HISTORY_LIST = "cart-history-list";

  static String PLACE_POND_URI = "/api/v1/pond/place";
  static const String POND_LIST_URI = "/api/v1/pond/list";

  static const String KOI_LIST_URI = "/api/v1/pond/list";
}
