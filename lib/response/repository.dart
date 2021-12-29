import 'package:auto_group/api/dio_helper.dart';
import 'package:auto_group/api/res_client.dart';

class Repository {
  RestClient? apiClient;

  Repository() {
    apiClient = RestClient(DioHelper.dioObject!);
  }
}