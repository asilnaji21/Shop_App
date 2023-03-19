// import 'dart:async';
// import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/styles/colors.dart';
import '../../../controller/my_provider.dart';

import '../../../helper/navigator.dart';
import '../../../helper/routes.dart';
import '../../../widgets/default_widgets.dart';

class ShopLOginScreen extends StatefulWidget {
  @override
  State<ShopLOginScreen> createState() => _ShopLOginScreenState();
}

class _ShopLOginScreenState extends State<ShopLOginScreen> {
  bool isLoading = false;
  bool title = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: const [
                  Text("Sign",
                      style: TextStyle(
                          color: black, fontFamily: 'roboto', fontSize: 40)),
                  Text("Up",
                      style: TextStyle(
                          color: defaultColor,
                          fontSize: 40,
                          fontFamily: 'roboto')),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 70),
              child: Text(
                "Create a new account!",
                style: TextStyle(
                    fontFamily: 'Create a new account!',
                    fontSize: 24,
                    color: grey),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            defaultFormField(
                controller: context.watch<NavigationController>().txtName,
                autofoucs: false,
                labelstyle: const TextStyle(
                    fontFamily: 'robotoregular', fontSize: 16, color: grey),
                label: 'Full name',
                prefix: Icons.person,
                color: defaultColor,
                type: TextInputType.name),
            const SizedBox(
              height: 10,
            ),
            defaultFormField(
                controller: context.watch<NavigationController>().txtEmail,
                autofoucs: false,
                labelstyle: const TextStyle(
                    fontFamily: 'robotoregular', fontSize: 16, color: grey),
                label: 'Email or Phone ',
                prefix: Icons.alternate_email,
                color: defaultColor,
                type: TextInputType.emailAddress),
            const SizedBox(
              height: 10,
            ),
            defaultFormField(
                controller: context.watch<NavigationController>().txtPassword,
                autofoucs: false,
                labelstyle: const TextStyle(
                    fontFamily: 'robotoregular', fontSize: 16, color: grey),
                label: 'Password',
                prefix: Icons.lock_open,
                color: defaultColor,
                type: TextInputType.number),
            const SizedBox(
              height: 10,
            ),
            defaultFormField(
                controller: context.watch<NavigationController>().txtPhone,
                autofoucs: false,
                labelstyle: const TextStyle(
                    fontFamily: 'robotoregular', fontSize: 16, color: grey),
                label: 'Confirm password',
                prefix: Icons.lock_open,
                color: defaultColor,
                type: TextInputType.number),
            const SizedBox(
              height: 10,
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: defaultColor,
              value: title,
              onChanged: (value) {
                setState(() {
                  title = value!;
                });
              },
              title: const Text(
                "Agree with trams and condition",
                style: TextStyle(
                    fontFamily: 'robotoregular', fontSize: 16, color: grey),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            defaultButton(
                function: () {
                  context.read<NavigationController>().getUser();
                },
                text: 'Sign Up',
                radius: 6,
                isUpperCase: false),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Have an account?",
                  style: TextStyle(color: grey, fontSize: 17),
                ),
                GestureDetector(
                  onTap: () {
                    NavigationConfiguration.navigationConfiguration
                        .navigateToo(Routes.loginRoute);
                  },
                  child: const Text(
                    "Log In",
                    style: TextStyle(
                        color: defaultColor,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
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
