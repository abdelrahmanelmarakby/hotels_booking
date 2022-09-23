class AccessTokenResponse {
  String? accessToken;
  AccessTokenResponse.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
  }
}
























/*class ApiProvider extends GetxService {
  late Dio dio;

  @override
  void onInit() {
    super.onInit();
    dio = Dio(
      BaseOptions(
        validateStatus: (status) {
          return true;
        },
        followRedirects: false,
        baseUrl: "https://api.morzaq.net/",
        queryParameters: {"lang": Get.locale?.languageCode ?? "ar"},
      ),
    );
  }

  Future<Map<String, dynamic>> get(String endPoint,
      {Map<String, String>? queryParameters}) async {
    Map<String, dynamic> responseJson;
    debugPrint("get $endPoint $queryParameters");

    try {
      final Response response = await dio.get(
        endPoint,
        queryParameters: queryParameters,
        options: Options(headers: {
          "Authorization": "Bearer ${Get.find<SharedPrefService>().getToken()}",
        }),
      );
      responseJson = classifyResponse(response, endPoint)!;
    } on DioError catch (err) {
      debugPrint("DioError $err");
      throw "internetError".tr;
    }
    return responseJson;
  }

  Future<Map<String, dynamic>> post(String endPoint, var body) async {
    Map<String, dynamic> responseJson;
    debugPrint("get $endPoint $body");

    try {
      final Response response = await dio.post(endPoint,
          data: body,
          options: Options(headers: {
            "Authorization": "Bearer ${Get.find<SharedPrefService>().token}",
          }));

      responseJson = classifyResponse(response, endPoint)!;
    } on DioError catch (err) {
      debugPrint("DioError $err");
      throw "internetError".tr;
    }
    return responseJson;
  }

  Map<String, dynamic>? classifyResponse(
    Response response,
    String endPoint,
  ) {
    debugPrint("classifyResponse endPoint $endPoint ${response.statusCode}");
    debugPrint("classifyResponse data ${response.data}");
    final Map<String, dynamic> responseData =
        response.data as Map<String, dynamic>;
    switch (response.statusCode) {
      case 200:
      case 201:
        return responseData;
      case 400:
      case 401:
      case 404:
        String error;
        if (responseData["data"]["error"] is List) {
          error = responseData["data"]["error"][0].toString();
        } else {
          error = responseData["data"]["error"].toString();
        }
        throw error;
      case 422:
        String error;
        error = responseData["data"][0][0].toString();
        throw error;
    }
  }
}*/
