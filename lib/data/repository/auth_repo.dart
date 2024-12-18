import 'package:get/get.dart';
import 'package:koi_farm/data/api/api_client.dart';
import 'package:koi_farm/models/signup_body_model.dart';
import 'package:koi_farm/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo {
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  AuthRepo({required this.apiClient, required this.sharedPreferences});

  Future<Response> registration(SignUpBody signUpBody) async {
    return await apiClient.postData(
        AppConstants.REGISTRATION_URI, signUpBody.toJson());
  }

  bool userLoggedIn() {
    print(
        "token " + sharedPreferences.getString(AppConstants.TOKEN).toString());
    return sharedPreferences.containsKey(AppConstants.TOKEN);
  }

  Future<String> getUserToken() async {
    return await sharedPreferences.getString(AppConstants.TOKEN) ?? "None";
  }

  // Future<Response> login(String email, String password) async {
  //   Response response = await apiClient.postData(
  //       AppConstants.LOGIN_URI, {"email": email, "password": password});
  //   print("Response from login API: ${response.body}");
  //   return response;
  // }

  Future<Response> login(String email, String password) async {
    // Kombinasikan base URL dan LOGIN_URI
    Response response = await apiClient.postData(
        AppConstants.LOGIN_URI, {"email": email, "password": password});
    print("Response from login API: ${response.body}");
    return response;
  }

  Future<bool> saveUserToken(String token) async {
    //saving token through controller till you logged out
    apiClient.token = token;
    apiClient.updateHeader(token);
    return await sharedPreferences.setString(AppConstants.TOKEN, token);
  }

  Future<void> saveUserNumberAndPassword(String number, String password) async {
    try {
      await sharedPreferences.setString(AppConstants.PHONE, number);
      await sharedPreferences.setString(AppConstants.PASSWORD, password);
    } catch (e) {
      throw e;
    }
  }

  bool clearSharedData() {
    sharedPreferences.remove(AppConstants.TOKEN);
    sharedPreferences.remove(AppConstants.PASSWORD);
    sharedPreferences.remove(AppConstants.PHONE);
    apiClient.token = '';
    apiClient.updateHeader('');
    return true;
  }
}
