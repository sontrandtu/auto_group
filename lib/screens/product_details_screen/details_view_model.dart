import 'package:auto_group/base/base_view_model.dart';
import 'package:auto_group/model/agency_model.dart';
import 'package:auto_group/response/agents_response.dart';

class DetailsViewModel extends BaseViewModel{
  final AgentsResponse agencyResponse;
  final int agencyId;
  Agency? agency;

  DetailsViewModel({required this.agencyResponse, required this.agencyId}) : super(agencyResponse){
    getAgency();
  }

  getAgency() async{
    setLoading = true;
    final response = await agencyResponse.getAgents();
    if(response.isOk){
      agency = response.data![agencyId];
    }
    setLoading = false;
  }
}