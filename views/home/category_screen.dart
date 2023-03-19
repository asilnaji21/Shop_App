import 'package:flutter/material.dart';
import 'package:shop_app/styles/colors.dart';
import '../../widgets/default_widgets.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Padding(
        padding: const EdgeInsets.only(left: 25),
        child: defaultFormField(
          type: TextInputType.name,
          hinttext: "Search",
          autofoucs: false,
          prefix: Icons.search,
        ),
      ),
      const SizedBox(
        height: 32,
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: GridView.builder(
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  childAspectRatio: 0.7,
                  maxCrossAxisExtent: 200,
                  crossAxisSpacing: 15.0,
                  mainAxisSpacing: 15.0),
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white70,
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 20,
                              spreadRadius: 0,
                              offset: Offset(0, 10),
                              color: Colors.white)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/smartphoneoutlined.png"),
                        const SizedBox(
                          height: 41,
                        ),
                        const Text(
                          "Smartphones",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'OpenSans',
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "36 items",
                          style: TextStyle(
                              fontSize: 11,
                              fontFamily: 'SemiBold',
                              color: grey),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      )
    ]));
  }
}
