import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shop_app/styles/colors.dart';

import '../controller/my_provider.dart';

class CardItems extends StatelessWidget {
  CardItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NavigationController().getcategories();
    return Expanded(
      child: Consumer<NavigationController>(
        builder: (context, value, child) => GridView.builder(
            itemCount: value.categoryList.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                childAspectRatio: 0.7,
                maxCrossAxisExtent: 200,
                crossAxisSpacing: 6.0,
                mainAxisSpacing: 9.0),
            itemBuilder: (context, index) {
              return buildCardItems(value.categoryList[index].name.toString());
            }),
      ),
    );
  }

  Widget buildCardItems(String text) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                  color: Colors.white,
                  blurRadius: 10,
                  spreadRadius: 0,
                  offset: Offset(0, 8))
            ]),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          // side: BorderSide(color: Colors.red)
                        )),
                        backgroundColor:
                            MaterialStateProperty.all(defaultColor)),
                    onPressed: () {},
                    child: const Text(
                      "-30%",
                      style: TextStyle(
                          fontSize: 11, fontFamily: 'OpenSans-Regular'),
                    )),
                Image.asset(
                  "assets/images/Heart.png",
                )
              ],
            ),
            Container(
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                // color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset('assets/images/iphone.png'),
            ),
            // const SizedBox(
            //   height: 127, //move
            // ),
            Text(
              text,
              style: TextStyle(fontSize: 17, fontFamily: 'SemiBold'),
            ),
            const SizedBox(
              height: 8, //move
            ),
            const Text(
              "945.00 AED",
              style: TextStyle(
                  fontSize: 12, fontFamily: 'SemiBold', color: defaultColor),
            ),
            const SizedBox(
              height: 8, //move
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/Star.png",
                ),
                const SizedBox(
                  width: 4, //move
                ),
                const Text(
                  "4.5 (3k review)",
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'OpenSans-Regular',
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
