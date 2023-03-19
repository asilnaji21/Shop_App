import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/styles/colors.dart';

import '../../controller/my_provider.dart';
import '../../widgets/default_widgets.dart';

class RestPasswoordScreen extends StatelessWidget {
  const RestPasswoordScreen({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 201, right: 101, left: 101),
              child: Text(
                "Reset password",
                style: TextStyle(fontSize: 22, fontFamily: 'OpenSans-Bold'),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Enter the email associated with your account and we’ll send an email with instructions to reset your password!",
                style: TextStyle(
                    fontSize: 14, fontFamily: 'OpenSans-Regular', color: grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 24),
              child: Column(
                children: [
                  defaultFormField(
                      controller:
                          context.watch<NavigationController>().textEmailForgot,
                      hintStyle: const TextStyle(
                          fontFamily: 'robotoregular',
                          fontSize: 16,
                          color: grey),
                      hinttext: 'Email address',
                      color: defaultColor,
                      type: TextInputType.emailAddress,
                      autofoucs: false),
                  const SizedBox(
                    height: 24,
                  ),
                  defaultButton(
                      function: () {
                        context.read<NavigationController>().forgotUserPass();
                      },
                      text: 'Next',
                      isUpperCase: false,
                      background: defaultColor,
                      radius: 6),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
