import 'package:get/get.dart';
import 'package:koi_farm/models/response.model.dart';
import 'package:koi_farm/models/signup_body_model.dart';
import 'package:koi_farm/data/repository/auth_repo.dart';

class AuthController extends GetxController implements GetxService {
  final AuthRepo authRepo;
  AuthController({required this.authRepo});

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<ResponseModel> registration(SignUpBody signUpBody) async {
    _isLoading = true;
    update();
    Response response = await authRepo.registration(signUpBody);
    late ResponseModel responseModel;
    if (response.statusCode == 200) {
      //code 200 means no error
      authRepo.saveUserToken(response.body["token"]);
      responseModel = ResponseModel(true, response.body["token"]);
      print(response.body["token"].toString());
    } else {
      responseModel =
          ResponseModel(false, response.body["errors"][0]["message"]);
      print(response.statusCode);
      print(response.statusText);
      print("authController above");
    }
    _isLoading = false;
    //update for changes on front end
    update();
    return responseModel;
  }

  Future<ResponseModel> login(String email, String password) async {
    print("Getting token");
    print("Token saat ini: ${authRepo.getUserToken().toString()}");
    _isLoading = true;
    update();

    // Panggil API login
    Response response = await authRepo.login(email, password);
    late ResponseModel responseModel;

    print("Response dari login API: ${response.body}");

    // Periksa apakah respons sukses dan berisi body
    if (response.statusCode == 200) {
      // Cek apakah response body tidak null dan berisi "token"
      if (response.body != null && response.body.containsKey("token")) {
        String token = response.body["token"];
        authRepo.saveUserToken(token);
        responseModel = ResponseModel(true, token);
      } else {
        responseModel =
            ResponseModel(false, "Token tidak ditemukan dalam respons");
      }
    } else {
      // Jika status bukan 200, periksa apakah ada "errors" dalam body
      if (response.body != null && response.body.containsKey("errors")) {
        responseModel =
            ResponseModel(false, response.body["errors"][0]["message"]);
      } else {
        responseModel =
            ResponseModel(false, "Terjadi kesalahan: ${response.statusCode}");
      }
    }

    // Log jika terjadi kegagalan
    if (!responseModel.isSuccess) {
      print("failed response model");
      print("Status Code: ${response.statusCode}");
      print("Response Body: ${response.body}");
    }

    _isLoading = false;
    update();
    return responseModel;
  }

  void saveUserNumberAndPassword(String number, String password) {
    authRepo.saveUserNumberAndPassword(number, password);
  }

  bool userLoggedIn() {
    return authRepo.userLoggedIn();
  }

  bool clearSharedData() {
    return authRepo.clearSharedData();
  }
}
