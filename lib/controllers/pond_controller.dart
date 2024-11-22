import 'package:get/get.dart';
import 'package:koi_farm/data/repository/pond_repo.dart';
import 'package:koi_farm/models/place_order_model.dart';
import 'package:koi_farm/models/pond_model.dart';

class PondController extends GetxController implements GetxService {
  PondRepo pondRepo;
  
  PondController({required this.pondRepo});
  bool _isLoading = false;
  List<PondModel> _pondList = [];
  List<PondModel> get pondList => _pondList;

  // bool _isLoaded = false;
  bool get isLoading => _isLoading;

  // int _paymentIndex = 0;
  // int get paymentIndex => _paymentIndex;

  // String _orderType = "cash";
  // String _orderType = "pemasakan";
  // String get orderType => _orderType;

  String _foodNote = " ";
  String get foodNote => _foodNote;
  Future<void> placeOrder(PlaceOrderBody placeOrder, Function callback) async {
    _isLoading = true;
    Response response = await pondRepo.placeOrder(placeOrder);
    if (response.statusCode == 200) {
      _isLoading = false;
      String message = response.body["message"];
      String orderID = response.body["order_id"].toString();
      callback(true, message, orderID);
    } else {
      print(response.statusText);

      // print(message+"1");
      print(response.body);

      callback(false, response.statusText!, '-1');
    }
  }

  // void updatePondList(List<PondModel> newPondList) {
  //   pondList.value = newPondList; // Update the pond list
  //   update(); // Notify GetBuilder to rebuild the dependent widget
  // }

  Future<void> getPondList() async {
  _isLoading = false;
  update(); // Trigger UI update before starting loading
  
  try {
    Response response = await pondRepo.getPondList();
    if (response.statusCode == 200) {
      _pondList = [];
      response.body.forEach((pond) {
        PondModel pondModel = PondModel.fromJson(pond);
        _pondList.add(pondModel);
      });
    } else {
      print("Failed to fetch ponds");
    }
  } catch (e) {
    print("Error fetching ponds: $e");
  } finally {
    _isLoading = true; // Ensure isLoading is set to false at the end
    update(); // Trigger UI update after data is processed
  }
}



  // void setFoodNote(String note) {
  //   _foodNote = note;
  //   // update(); causing double update error in cart page because two nested controller
  // }
}
