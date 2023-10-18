
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_sample/modal_class/user_list_api.dart';
part 'retrofit.g.dart';

class Apis {
  static const String users = '/users?page=2';
}

@RestApi(baseUrl: 'https://reqres.in/api/')
abstract class RestClient {

  @GET(Apis.users)
  Future<UserListApi> getUsers();
}
