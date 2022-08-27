

import 'package:base_project/src/data/provider/provider.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

abstract class UserRepoInterface{
  Future<Responses<String>> getToken({data});
}

class UserRepo extends UserRepoInterface{

  @override
  Future<Responses<String>> getToken({data}) async {
    try{
      final response = await ApiProvider().post(
        path: ApiUrls.baseUrl + ApiUrls.login,
        data: data
      );

      if(response.data != null){
        String accessToken = response.data;
        return Responses<String>(statusCode: CODE_SUCCESS, objects: accessToken);
      }
      else{
        return Responses<String>(statusCode: CODE_RESPONSE_NULL, msg: '');
      }
    } catch(error){
      if(error is DioError){
        if(error.response?.statusCode == 400){
          return Responses<String>(statusCode: error.response?.statusCode, msg: 'incorrect_login'.tr);
        }
      }

      String? errorMessage = DioExceptions.fromDioError(error).toString();

      return Responses<String>(statusCode: CODE_ERROR, msg: errorMessage);
    }
  }

}
