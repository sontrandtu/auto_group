import 'package:auto_group/api/api_response.dart';
import 'package:auto_group/model/category_model.dart';
import 'package:auto_group/response/repository.dart';

class CategoryRepository extends Repository {
  Future<ApiResponse<List<Category>>> getCategories() async {
    return apiClient!.getCategories().wrap();
  }
}
