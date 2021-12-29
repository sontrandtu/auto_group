import 'package:auto_group/demo_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/home_header.dart';
import 'components/list_car_new.dart';
import 'components/list_discount.dart';
import 'components/list_distributor_car.dart';
import 'components/list_latest_car.dart';
import 'components/list_support.dart';
import 'home_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                HomeHeader(
                  demoCategories: viewModel.categories,
                  demoDataGrid: DemoData.demoDataGrid,
                ),
                ListDiscount(listDiscount: DemoData.demoDiscounts),
                ListLatestCar(carProducts: viewModel.products),
                ListDistributorCar(agents: viewModel.agents),
                const ListSupport(),
                ListCarNews(demoCarNews: viewModel.news),
                const SizedBox(height: 20)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
