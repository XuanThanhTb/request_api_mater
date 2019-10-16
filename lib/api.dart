import 'package:dio/dio.dart';

class ApiError {
  int statusCode;
  String message;
  ApiError({this.statusCode, this.message});
  ApiError.fromRequestError(DioError error) {
    this.statusCode = error.response == null ? -1 : error.response.statusCode;
    this.message = error.message;
  }
  @override
  String toString() {
    return "$statusCode - $message";
  }
}

class Api<T> {
  T data;
  ApiError error;
  Api(this.data, this.error);
  @override
  String toString() {
    if (data != null) {
      return data.toString();
    }
    return error.toString();
  }
}

class ListResponese<T> {
  List<T> items = [];
  ListResponese(dynamic json, T Function(dynamic itemJson) itemConverter) {
    if (json is List) {
      items = json.map(itemConverter).toList();
    }
  }
}