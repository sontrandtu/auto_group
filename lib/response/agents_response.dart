import 'package:auto_group/api/api_response.dart';
import 'package:auto_group/model/agency_model.dart';
import 'package:auto_group/response/repository.dart';

class AgentsResponse extends Repository {
  Future<ApiResponse<List<Agency>>> getAgents() async {
    return apiClient!.getAgents().wrap();
  }
  Future<ApiResponse<Agency>> getAgency(int id) async{
    return apiClient!.getAgency(id).wrap();
  }
}
