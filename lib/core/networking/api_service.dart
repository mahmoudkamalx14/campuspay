import 'package:campuspay/features/sign_up/data/models/sign_up_response.dart';

import '../../features/login/data/models/login_request_body.dart';
import '../../features/login/data/models/login_respone.dart';
import '../../features/sign_up/data/models/sign_up_request_body.dart';
import 'package:dio/dio.dart';

import 'package:retrofit/http.dart';

import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiConstants.login)
  Future<SignupResponse> signup(@Body() SignupRequestBody loginRequestBody);
}
