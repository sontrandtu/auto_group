import 'package:auto_group/api/api_response.dart';
import 'package:auto_group/model/product_model.dart';
import 'package:auto_group/response/repository.dart';

class ProductsResponse extends Repository {
  Future<ApiResponse<List<Product>>> getProducts() async {
    return apiClient!.getProducts().wrap();
  }
}
