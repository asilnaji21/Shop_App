import 'package:flutter/material.dart';

import '../helper/navigator.dart';
import '../models/onboarding_model.dart';
import '../styles/colors.dart';
import '../views/onboarding/onboarding_screen.dart';
import '../views/onboarding/signup/signup_screen.dart';

class BuildBoardingItem extends StatelessWidget {
  BoardingModel? model;
  BuildBoardingItem(this.model);
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Image(
        image: AssetImage(
          model!.image,
        ),
        width: 331,
        height: 271,
      ),
      const SizedBox(
        height: 77,
      ),
      Text(
        model!.title,
        style: const TextStyle(fontSize: 15),
      ),
      const SizedBox(
        height: 16.0,
      ),
      Text(
        model!.body,
        style: const TextStyle(fontSize: 14),
      ),
      Center(
        child: FloatingActionButton(
          backgroundColor: defaultColor,
          onPressed: () {
            if (isLast) {
              NavigationConfiguration.navigationConfiguration
                  .navigateTo(context, ShopLOginScreen()); //move
            } else {
              boardController.nextPage(
                  duration: const Duration(microseconds: 750),
                  curve: Curves.fastLinearToSlowEaseIn);
            }
          },
          child: const Icon(Icons.arrow_forward_ios),
        ),
      )
    ]);
  }
}
