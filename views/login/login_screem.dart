import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/my_provider.dart';
import '../../styles/colors.dart';
import '../../widgets/default_widgets.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 230, right: 145, left: 25),
              child: Row(
                children: const [
                  Text("Welcome",
                      style: TextStyle(
                          color: black,
                          fontFamily: 'robotomedium',
                          fontSize: 30)),
                  Text("back!",
                      style: TextStyle(
                          color: defaultColor,
                          fontSize: 30,
                          fontFamily: 'robotomedium')),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  defaultFormField(
                    controller: context.watch<NavigationController>().textEmail,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: defaultColor, width: 2),
                    ),
                    // initialvalue: "example@gmail.com",
                    prefix: Icons.person,
                    color: defaultColor,
                    type: TextInputType.emailAddress,
                    autofoucs: true,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  defaultFormField(
                      controller:
                          context.watch<NavigationController>().textPassword,
                      hinttext: 'Password',
                      prefix: Icons.lock,
                      color: defaultColor,
                      type: TextInputType.number,
                      autofoucs: false),
                  const Padding(
                    padding: EdgeInsets.only(top: 16, left: 230),
                    child: Text(
                      textAlign: TextAlign.end,
                      'Forget password?',
                      style: TextStyle(
                        color: textcolor,
                        fontFamily: 'robotoregular',
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
              child: defaultButton(
                  function: () {
                    context.read<NavigationController>().loginUser();
                  },
                  text: 'Log in',
                  isUpperCase: false,
                  radius: 6),
            ),
            const SizedBox(
              height: 106,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Have an not account?",
                  style: TextStyle(color: grey, fontSize: 17),
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                      color: defaultColor,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
