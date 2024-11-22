import 'dart:convert';

import 'package:get/get.dart';
import 'package:koi_farm/models/JenisKoi.dart';
import 'package:koi_farm/models/daftarkoi_model.dart';
import 'package:koi_farm/pages/entity/koi_page.dart';
import 'package:koi_farm/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class ApiClient extends GetConnect implements GetxService {
  late ApiClient apiClient;
  late String? token;
  final String appBaseUrl;
  late SharedPreferences sharedPreferences;
  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl, required this.sharedPreferences}) {
    // baseUrl = appBaseUrl;
    baseUrl = AppConstants.BASE_URL;
    timeout = Duration(seconds: 30);
    token = sharedPreferences.getString(AppConstants.TOKEN);
    _mainHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }
  // ApiClient({required this.appBaseUrl, required this.sharedPreferences}) {
  //   baseUrl = appBaseUrl; // Ensure appBaseUrl is passed correctly
  //   timeout = Duration(seconds: 30);
  //   token = sharedPreferences.getString('token');
  //   _mainHeaders = {
  //     'Content-type': 'application/json; charset=UTF-8',
  //     'Authorization': 'Bearer $token',
  //   };
  // }
  void updateHeader(String token) {
    _mainHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }

  // {} used for optional
  Future<Response> getData(String uri, {Map<String, String>? headers}) async {
    // print(body.toString());
    try {
      Response response = await get(uri, headers: headers ?? _mainHeaders);

      print(response.toString());
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  Future<Response> postData(String uri, dynamic body) async {
    print(body.toString());
    try {
      Response response = await post(uri, body, headers: _mainHeaders);
      print(response.toString());
      return response;
    } catch (e) {
      print(e.toString());
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  // Method to fetch the koi list
 Future<List<DaftarKoiModel>> fetchKoiList() async {
  try {
    final response = await http.get(Uri.parse('$baseUrl/api/v1/koi/list'));

    if (response.statusCode == 200) {
      // Decode the JSON response
      final Map<String, dynamic> jsonResponse = json.decode(response.body);

      if (jsonResponse['data'] is List) {
        // Map the data list to `DaftarKoiModel`
        return (jsonResponse['data'] as List)
            .map((e) => DaftarKoiModel.fromJson(e))
            .toList();
      } else {
        throw Exception("Invalid 'data' format in API response");
      }
    } else {
      throw Exception('Failed to fetch Koi data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Log or handle error
    print('Error fetching Koi data: $e');
    throw Exception('Error fetching Koi data: $e');
  }
}

Future<List<JenisKoi>> fetchJenisKoiList() async {
  final response = await http.get(Uri.parse('$baseUrl/api/v1/jenis-koi'));

  if (response.statusCode == 200) {
    final List<dynamic> jsonResponse = json.decode(response.body);
    return jsonResponse.map((json) => JenisKoi.fromJson(json)).toList();
  } else {
    throw Exception('Failed to fetch JenisKoi data');
  }
}



  Future<int> fetchKoiCount() async {
    //buat ngitung jumlah koi
    try {
      final response = await http.get(Uri.parse('$baseUrl/api/v1/koi/list'));
      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body); // Parsing JSON
        var koiData = jsonData['data']; // Ambil array 'data'
        return koiData.length; // Menghitung jumlah koi
      } else {
        throw Exception('Gagal memuat jumlah koi');
      }
    } catch (e) {
      throw Exception('Gagal memuat jumlah koi: $e');
    }
  }
}
