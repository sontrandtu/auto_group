import 'package:auto_group/base/base_view_model.dart';
import 'package:auto_group/model/agency_model.dart';
import 'package:auto_group/model/product_model.dart';
import 'package:auto_group/response/agents_response.dart';

class DetailsViewModel extends BaseViewModel {
  final AgentsResponse agencyResponse;
  final Product product;
  Agency agency = Agency(
      id: "1",
      rating: 4.6,
      feedbackChat: 10,
      nameAgency: "Sơn Trần",
      operationStatus: "2 ngày trước",
      quantityProduct: 20,
      urlAvatar: "assets/images/red_car2x.png"
  );

  DetailsViewModel({
    required this.agencyResponse,
    required this.product,
  }) : super(agencyResponse) {
   // clearData();
    getAgency();
  }

  clearData(){
    agency = Agency();
  }

  getAgency() async {
    setLoading = true;
    final response = await agencyResponse.getAgency(product.id!);
    if (response.isOk) {
      agency = response.data ?? Agency();
    }
    notifyListeners();
    setLoading = false;
  }
}
