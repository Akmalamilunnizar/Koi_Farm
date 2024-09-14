
import 'package:get/get.dart';
import 'package:koi_farm/api/api_client.dart';
import 'package:koi_farm/controllers/auth_controller.dart';
import 'package:koi_farm/controllers/user_controller.dart';
import 'package:koi_farm/repository/auth_repo.dart';
import 'package:koi_farm/repository/user_repo.dart';
import 'package:koi_farm/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  Get.lazyPut(() => sharedPreferences);
  //api client
  Get.lazyPut(() => ApiClient(
      appBaseUrl: AppConstants.BASE_URL, sharedPreferences: Get.find()));
  Get.lazyPut(
      () => AuthRepo(apiClient: Get.find(), sharedPreferences: Get.find()));
  Get.lazyPut(() => UserRepo(apiClient: Get.find()));

  //repos
  // Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  // Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  // Get.lazyPut(() => CartRepo(sharedPreferences: Get.find()));
  // Get.lazyPut(() => OrderRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => AuthController(authRepo: Get.find()));
  Get.lazyPut(() => UserController(userRepo: Get.find()));
  // Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  // Get.lazyPut(
  //     () => RecommendedProductController(recommendedProductRepo: Get.find()));
  // Get.lazyPut(() => CartController(cartRepo: Get.find()));
  // Get.lazyPut(() => OrderController(orderRepo: Get.find()));
}
