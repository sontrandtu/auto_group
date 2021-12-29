import 'package:auto_group/base/base_view_model.dart';
import 'package:auto_group/model/agency_model.dart';
import 'package:auto_group/model/car_news_model.dart';
import 'package:auto_group/model/category_model.dart';
import 'package:auto_group/model/product_model.dart';
import 'package:auto_group/response/agents_response.dart';
import 'package:auto_group/response/categories_response.dart';
import 'package:auto_group/response/products_response.dart';

class HomeViewModel extends BaseViewModel {
  List<Category> categories = [];
  List<Product> products = [];
  List<Agency> agents = [];
  List<CarNews> news = [];
  final CategoryRepository categoryRepository;
  final ProductsResponse productsResponse;
  final AgentsResponse agentsResponse;

  HomeViewModel(
    this.categoryRepository,
    this.productsResponse,
    this.agentsResponse,
  ) : super(categoryRepository) {
    clearData();
    getHomeData();
  }

  clearData() {
    categories.clear();
    products.clear();
    agents.clear();
  }

  getHomeData() {
    getCategories();
    getProducts();
    getAgents();
    //getNews();
  }

  getCategories() async {
    setLoading = true;
    final response = await categoryRepository.getCategories();
    if (response.isOk) {
      categories.addAll(response.data ?? []);
    }
    notifyListeners();
    setLoading = false;
  }

  getProducts() async {
    final response = await productsResponse.getProducts();
    if (response.isOk) {
      products.addAll(response.data ?? []);
    }
    notifyListeners();
  }

  getAgents() async {
    final response = await agentsResponse.getAgents();
    if (response.isOk) {
      agents.addAll(response.data ?? []);
    }
    notifyListeners();
  }

  // getNews() async {
  //   final response = await newsResponse.getNews();
  //   if (response.isOk) {
  //     news.addAll(response.data ?? []);
  //   }
  //   notifyListeners();
  // }
}
