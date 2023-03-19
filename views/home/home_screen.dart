import 'package:flutter/material.dart';
import '../../component/carsoula_loading.dart';

import '../../controller/my_provider.dart';
import '../../widgets/custom_card_items.dart';
import '../../widgets/default_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // DioService().getMethod(
    //     "https://backend-shop-apps.herokuapp.com/api/category/all?offset=0&limit=10");
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: defaultFormField(
                type: TextInputType.name,
                hinttext: "Search",
                autofoucs: false,
                prefix: Icons.search),
          ),
          CarsoulaLoading(),
          SizedBox(
            height: 20,
          ),
          CardItems(),
        ],
      ),
    );
  }
}
