import 'package:clan_app/core/network/local/cache_helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter_svg/svg.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'http://142.93.175.56/api/v1/customers/',
        receiveDataWhenStatusError: true,
        // headers: {
        //   // 'Content-Type': 'multipart/form-data',
        //   // "User-Agent":"PostmanRuntime/7.39.0",
        //   // // 'Accept': 'application/json',
        //   // // 'Content-Type': 'multipart/form-data',
        //   // 'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7',
        // },
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
    String anyHeaderKey = "Browsing-Key",
    String? anyHeaderValue,
  }) async {
    // dio.options.headers = {
    //   // 'Authorization': token ?? '',
    //   'Content-Type': 'application/json',
    // };
    Map<String, dynamic> headers = {
      //     //this is correct
      "Accept": "*/*",
      // "Accept-Encoding":"br",
      "Content-Type": "application/json",
      // "User-Agent": "2",
      "Authorization": token != null
          ? "Bearer $token"
          : CacheHelper.getData(key: 'token') != null
              ? "Bearer ${CacheHelper.getData(key: 'token')}"
              : null,
      "Cookie": CacheHelper.getData(key: 'anonymousKey'),
      anyHeaderKey: anyHeaderValue,

      //     //addition
      // "Connection": "keep-alive",
      //     // "":""
    };
    if (token == null) {
      headers.remove("Authorization");
    }
    if (anyHeaderValue == null) {
      headers.remove(anyHeaderKey);
    }
    if (CacheHelper.getData(key: "anonymousKey") == null) {
      headers.remove("Cookie");
    }

    return dio.get(
      url,
      queryParameters: query,
      options: Options(headers: headers),
    );
  }

  static Future<Response> deleteData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
    String anyHeaderKey = "Browsing-Key",
    String? anyHeaderValue,
  }) async {
    // dio.options.headers = {
    //   // 'Authorization': token ?? '',
    //   'Content-Type': 'application/json',
    // };
    Map<String, dynamic> headers = {
      //     //this is correct
      "Accept": "*/*",
      // "Accept-Encoding":"br",
      "Content-Type": "application/json",
      // "User-Agent": "2",
      "Authorization": token != null
          ? "Bearer $token"
          : CacheHelper.getData(key: 'token') != null
              ? "Bearer ${CacheHelper.getData(key: 'token')}"
              : null,
      "Cookie": CacheHelper.getData(key: 'anonymousKey'),
      anyHeaderKey: anyHeaderValue,

      //     //addition
      // "Connection": "keep-alive",
      //     // "":""
    };
    if (token == null) {
      headers.remove("Authorization");
    }
    if (anyHeaderValue == null) {
      headers.remove(anyHeaderKey);
    }
    if (CacheHelper.getData(key: "anonymousKey") == null) {
      headers.remove("Cookie");
    }

    return dio.delete(
      url,
      queryParameters: query,
      options: Options(headers: headers),
    );
  }

  static Future<Response> postData({
    required String url,
    required Object data,
    Map<String, dynamic>? query,
    String? token,
    String anyHeaderKey = "Browsing-Key",
    String? anyHeaderValue,
  }) async {
    // options: Options(
    //     headers: {
    //   //     //this is correct
    //       "Accept": "*/*",
    //       // "Accept-Encoding":"br",
    //       "Content-Type": "application/json",
    //       "User-Agent":"2",
    //       "Authorization":"59|JotB3aXhJXRfAVcBdiEqu4K8pVywhHroXZ9ku7nxe7189e16",

    //   //     //addition
    //       "Connection":"keep-alive",
    //   //     // "":""
    //     },
    //   ),
    Map<String, dynamic> headers = {
      //     //this is correct
      "Accept": "*/*",
      // "Accept-Encoding":"br",
      "Content-Type": "application/json",
      "User-Agent": "2",
      "Authorization": token != null
          ? "Bearer $token"
          : CacheHelper.getData(key: 'token') != null
              ? "Bearer ${CacheHelper.getData(key: 'token')}"
              : null,
      "Cookie":
          "fingerprint=0fdff803-18e9-452e-9b56-e11866a2ca15; session_key=dt2mvhgj5ekh65w2wc0gaoqhum6u9kif",

      anyHeaderKey: anyHeaderValue,

      //     //addition
      // "Connection": "keep-alive",
      //     // "":""
    };
    if (token == null) {
      headers.remove("Authorization");
    }
    if (anyHeaderValue == null) {
      headers.remove(anyHeaderKey);
    }
    if (CacheHelper.getData(key: "anonymousKey") == null) {
      headers.remove("Cookie");
    }
    return dio.post(
      url,
      queryParameters: query,
      data: data,
      options: Options(
        headers: headers,
      ),
    );
  }
}
