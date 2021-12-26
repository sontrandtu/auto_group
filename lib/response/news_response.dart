import 'package:auto_group/api/api_response.dart';
import 'package:auto_group/model/car_news_model.dart';
import 'package:auto_group/response/repository.dart';

class NewsResponse extends Repository {
  Future<ApiResponse<List<CarNews>>> getNews() async {
    return apiClient!.getNews().wrap();
  }
}
