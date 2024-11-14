import 'package:get/get.dart';
import 'package:koi_farm/controllers/auth_controller.dart';
import 'package:koi_farm/controllers/pond_controller.dart';
import 'package:koi_farm/controllers/user_controller.dart';
import 'package:koi_farm/data/api/api_client.dart';
import 'package:koi_farm/data/repository/auth_repo.dart';
import 'package:koi_farm/data/repository/pond_repo.dart';
import 'package:koi_farm/data/repository/user_repo.dart';
import 'package:koi_farm/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  Get.lazyPut(() => sharedPreferences, fenix: true);
  //api client
  Get.lazyPut(() => ApiClient(
      appBaseUrl: AppConstants.BASE_URL, sharedPreferences: Get.find()));
  Get.lazyPut(
      () => AuthRepo(apiClient: Get.find(), sharedPreferences: Get.find()));
  Get.lazyPut(() => UserRepo(apiClient: Get.find()));
  Get.lazyPut(() => PondRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => AuthController(authRepo: Get.find()));
  Get.lazyPut(() => UserController(userRepo: Get.find()));
  Get.lazyPut(() => PondController(pondRepo: Get.find()));
}
