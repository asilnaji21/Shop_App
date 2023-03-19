import 'package:flutter/material.dart';

import '../../styles/colors.dart';
import '../../widgets/default_widgets.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  bool password = true;
  IconData icon = Icons.visibility;
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
              padding: EdgeInsets.only(top: 163, right: 64, left: 74),
              child: Text(
                "Create new password",
                style: TextStyle(fontSize: 22, fontFamily: 'OpenSans-Bold'),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 15, left: 25),
              child: Text(
                "Your new password must be different from \nprevious used passwords.",
                style: TextStyle(
                    fontSize: 14, fontFamily: 'OpenSans-Regular', color: grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 30, top: 44),
              child: Column(
                children: [
                  defaultFormField(
                      isPassword: password,
                      type: TextInputType.number,
                      prefix: Icons.lock_open_outlined,
                      color: defaultColor,
                      suffix: icon,
                      suffixPressed: () {
                        setState(() {
                          password = !password;
                          if (password == true) {
                            icon = Icons.visibility_off;
                          } else {
                            icon = Icons.visibility;
                          }
                        });
                      },
                      autofoucs: false,
                      hinttext: 'Password',
                      hintStyle: const TextStyle(
                          fontSize: 16, fontFamily: 'robotoregular')),
                  const SizedBox(
                    height: 36,
                  ),
                  defaultFormField(
                      type: TextInputType.number,
                      prefix: Icons.lock_open_outlined,
                      color: defaultColor,
                      suffix: Icons.visibility,
                      autofoucs: false,
                      hinttext: 'Confirm password',
                      hintStyle: const TextStyle(
                          fontSize: 16, fontFamily: 'robotoregular')),
                  const SizedBox(
                    height: 24,
                  ),
                  defaultButton(
                      function: () {},
                      text: 'Confirm',
                      isUpperCase: false,
                      background: defaultColor,
                      radius: 6)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
