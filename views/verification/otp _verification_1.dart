// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/styles/colors.dart';

import 'package:animate_do/animate_do.dart';

import '../../controller/my_provider.dart';
import '../../widgets/custom_ImageAboutverification.dart';
import '../../widgets/default_widgets.dart';

class OtpVerification extends StatelessWidget {
  // final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 134),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ImageAboutverification(
                subtitle:
                    "We need to register your phone number before \n getting srated!",
                title: "Phone Verification",
              ),
              const SizedBox(
                height: 33,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: FadeInDown(
                  delay: const Duration(milliseconds: 400),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Stack(
                      children: [
                        defaultFormField(
                          type: TextInputType.number,
                          autofoucs: true,
                          controller:
                              context.watch<NavigationController>().textNumber,
                          hinttext: 'Phone Number',
                          labelstyle: const TextStyle(
                              fontFamily: 'robotoregular',
                              fontSize: 16,
                              color: grey),
                          hintStyle: TextStyle(
                              color: Colors.grey.shade500, fontSize: 16),
                        )
                        // InternationalPhoneNumberInput(
                        //   onInputChanged: (PhoneNumber number) {
                        // context
                        //     .watch<NavigationController>()
                        //     .textNumber
                        //     .toString() as PhoneNumber;
                        //   },
                        //   // onInputValidated: (bool value) {
                        //   //   print(value);
                        //   // },
                        //   selectorConfig: const SelectorConfig(
                        //     selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                        //   ),
                        //   ignoreBlank: false,
                        //   autoValidateMode: AutovalidateMode.disabled,
                        //   selectorTextStyle:
                        //       const TextStyle(color: Colors.black),
                        //   // textFieldController:
                        //   //     context.watch<NavigationController>().textNumber,
                        //   formatInput: false,
                        //   maxLength: 9,
                        //   keyboardType: const TextInputType.numberWithOptions(
                        //       signed: true, decimal: true),
                        //   cursorColor: Colors.black,
                        //   inputDecoration: InputDecoration(
                        //     contentPadding:
                        //         const EdgeInsets.only(bottom: 15, left: 0),
                        //     border: InputBorder.none,
                        //   labelText: 'Phone Number',
                        //   labelStyle: const TextStyle(
                        //       fontFamily: 'robotoregular',
                        //       fontSize: 16,
                        //       color: grey),
                        //   hintStyle: TextStyle(
                        //       color: Colors.grey.shade500, fontSize: 16),
                        // ),
                        //   // onSaved: (PhoneNumber number) {
                        //   //   print('On Saved: $number');
                        //   // },
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                child: defaultButton(
                    function: () {
                      context.read<NavigationController>().verificationNumber();
                    },
                    text: 'Send OTP',
                    background: defaultColor,
                    radius: 6,
                    isUpperCase: false),
              )
            ],
          ),
        ),
      ),
    );
  }
}
