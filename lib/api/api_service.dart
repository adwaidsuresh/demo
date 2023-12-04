import 'dart:convert';
import 'dart:developer';

import 'package:demo/modelclass/model_class.dart';
import 'package:dio/dio.dart';

class Apiservice {
  Dio dio = Dio(
    BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'),
  );
  Future<List<Welcome>?> getpost() async {
    try {
      Response response = await dio.get('photos');
      if (response.statusCode == 200) {
        String json = jsonEncode(response.data);
        return welcomeFromJson(json);
      }
      return null;
    } on DioException catch (e) {
      log('error:$e');
    }
    return null;
  }
}
