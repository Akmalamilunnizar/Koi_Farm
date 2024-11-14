import 'package:get/get.dart';
import 'package:koi_farm/data/api/api_client.dart';
import 'package:koi_farm/models/place_order_model.dart';
import 'package:koi_farm/utils/app_constants.dart';

class PondRepo {
  final ApiClient apiClient;
  PondRepo({required this.apiClient});

  Future<Response> placeOrder(PlaceOrderBody placeOrder) async {
    return await apiClient.postData(
        AppConstants.PLACE_POND_URI, placeOrder.toJson());
  }

  Future<Response> getPondList() async {
    return await apiClient.getData(
        AppConstants.POND_LIST_URI);
  }
}
