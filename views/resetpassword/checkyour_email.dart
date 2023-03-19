import 'package:flutter/material.dart';

import '../../styles/colors.dart';
import '../../widgets/custom_ImageAboutverification.dart';
import '../../widgets/default_widgets.dart';

class CheckYourEmailScreen extends StatelessWidget {
  const CheckYourEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.info_outline)),
        ],
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 112),
        child: Column(
          children: [
            ImageAboutverification(
              title: "Check your mail",
              subtitle:
                  "We have sent a password recover instructions to \nyour email.",
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 24),
              child: defaultButton(
                  function: () {},
                  text: 'Open email',
                  isUpperCase: false,
                  background: defaultColor,
                  radius: 6),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "i’ll confirm latter",
                style: TextStyle(
                    color: grey, fontSize: 14, fontFamily: 'SemiBold'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
