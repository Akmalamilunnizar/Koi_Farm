import 'package:get/get.dart';
import 'package:koi_farm/api/api_client.dart';
import 'package:koi_farm/utils/app_constants.dart';

class UserRepo {
  final ApiClient apiClient;
  UserRepo({required this.apiClient});
  Future<Response> getUserInfo() async {
    return await apiClient.getData(AppConstants.USER_INFO_URI);
  }
}
