// import 'dart:developer';

// import 'package:dio/dio.dart';
// import 'package:request_api_bee_mart/api.dart';
// import 'package:request_api_bee_mart/model/respon_api.dart';

// class ApiService {
//   final _dio = Dio();
//   Future<Api<AddressRespon>> getApiBee(String url) async {
//     try {
//       debugger();
//       var response = await _dio.get(url);
//       return Api(AddressRespon.fromJson(response.data), null);
//     } on DioError catch (e) {
//       return Api(null, ApiError.fromRequestError(e));
//     }
//   }

//   Future<Api<ListResponese<AddressRespon>>> getApiBeeList(String url) async {
//     try {
//       Response response = await _dio.get(url);
//       return Api(
//           ListResponese<AddressRespon>(
//               response.data, (item) => AddressRespon.fromJson(item)),
//           null);
//     } on DioError catch (e) {
//       return Api(null, ApiError.fromRequestError(e));
//     }
//   }
// }
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:request_api_bee_mart/api.dart';
import 'package:request_api_bee_mart/model/respon_api.dart';

class ApiService {
  final _dio = Dio();
  Future<Api<AddressRespon>> getGitHub(String url) async {
    try {
      var response = await _dio.get(url);
      debugger();
      return Api(AddressRespon.fromJson(response.data), null);
    } on DioError catch (e) {
      return Api(null, ApiError.fromRequestError(e));
    }
  }

  Future<Api<ListResponese<AddressRespon>>> getGitHubs(String url) async {
    try {
      Response response = await _dio.get(url);
      return Api(
          ListResponese<AddressRespon>(
              response.data, (item) => AddressRespon.fromJson(item)),
          null);
    } on DioError catch (e) {
      return Api(null, ApiError.fromRequestError(e));
    }
  }
}
