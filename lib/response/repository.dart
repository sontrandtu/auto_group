import 'package:auto_group/api/dio_helper.dart';
import 'package:auto_group/api/res_client.dart';
import 'package:auto_group/preference/preference.dart';

class Repository {
  RestClient? apiClient;

  Repository() {
    apiClient = RestClient(DioHelper.dioObject!);
  }

  // String? get accessToken => PreferenceManager.getValue<String>(PreferenceManager.KEY_ACCESS_TOKEN);
  //
  // String? get userId => PreferenceManager.getValue<String>(PreferenceManager.KEY_USER_ID);
}