import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/my_provider.dart';
import '../../helper/navigator.dart';
import '../../helper/routes.dart';
import '../../styles/colors.dart';
import '../../widgets/custom_ImageAboutverification.dart';
import '../../widgets/custom_VerficationSquare.dart';
import '../../widgets/default_widgets.dart';

class OtpVerificationPhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 134),
              child: Center(child: CustomOtpImage()),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              "Phone Verification",
              style:
                  TextStyle(color: black, fontSize: 22, fontFamily: 'roboto'),
            ),
            const SizedBox(
              height: 18,
            ),
            const Text(
              "We need to register your phone number before \n getting srated!",
              style: TextStyle(color: grey, fontSize: 14, fontFamily: 'roboto'),
            ),
            const SizedBox(
              height: 33,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Form(
                    child: CustomVerficationSquare(),
                  ),
                  Form(
                    child: CustomVerficationSquare(),
                  ),
                  Form(
                    child: CustomVerficationSquare(),
                  ),
                  Form(
                    child: CustomVerficationSquare(),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 29,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: defaultButton(
                  function: () {
                    NavigationConfiguration.navigationConfiguration
                        .navigateToo(Routes.resetPassword);
                  },
                  text: 'verify phone number',
                  background: defaultColor,
                  isUpperCase: false,
                  radius: 6),
            ),
            const SizedBox(
              height: 28,
            ),
            const Text("Edit phone number?"),
            const SizedBox(
              height: 14,
            ),
            Container(
              color: defaultColor.withOpacity(.2),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Send again",
                    style: TextStyle(
                        color: defaultColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
