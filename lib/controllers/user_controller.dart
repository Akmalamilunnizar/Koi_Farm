import 'package:get/get.dart';
import 'package:koi_farm/models/response.model.dart';
import 'package:koi_farm/models/user_model.dart';
import 'package:koi_farm/data/repository/user_repo.dart';

class UserController extends GetxController implements GetxService {
  final UserRepo userRepo;

  UserController({required this.userRepo});

  bool _isLoading = false;
  UserModel? _userModel;
  bool get isLoading => _isLoading;
  UserModel? get userModel => _userModel;

  Future<ResponseModel> getUserInfo() async {
    Response response = await userRepo.getUserInfo();
    late ResponseModel responseModel;
    print("test " + response.body.toString());
    if (response.statusCode == 200) {
      //code 200 means no error
      _userModel = UserModel.fromJson(response.body);
      _isLoading = true;
      responseModel = ResponseModel(true, "successfully");
    } else {
      responseModel = ResponseModel(false, response.statusText!);
      print(response.statusCode);
      print(response.statusText);
      print("authController above");
    }
    _isLoading = false;
    //update for changes on front end
    update();
    return responseModel;
  }
}
