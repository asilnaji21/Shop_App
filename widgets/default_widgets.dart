import 'package:flutter/material.dart';
import 'package:shop_app/styles/colors.dart';

Widget defaultFormField({
  TextStyle? hintStyle,
  String? hinttext,
  InputBorder? focusedBorder,
  bool? autofoucs,
  // String? initialvalue,
  Color? color,
  TextStyle? labelstyle,
  TextEditingController? controller,
  required TextInputType type,
  Function(String)? onSubmit,
  Function(String)? onChange,
  Function()? onTap,
  bool isPassword = false,
  Function(String)? validate,
  String? label,
  IconData? prefix,
  IconData? suffix,
  Function()? suffixPressed,
  bool isClickable = true,
}) =>
    Card(
      elevation: 3,
      child: Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
              blurRadius: 20,
              spreadRadius: 0,
              offset: Offset(0, 10),
              color: Colors.white)
        ]),
        child: TextFormField(
          controller: controller,
          autofocus: autofoucs!,
          // initialValue: initialvalue,
          keyboardType: type,
          obscureText: isPassword,
          enabled: isClickable,
          onFieldSubmitted: onSubmit,
          onChanged: onChange,
          onTap: onTap,
          decoration: InputDecoration(
            hintStyle: hintStyle,
            hintText: hinttext,
            focusedBorder: focusedBorder,
            labelText: label,
            labelStyle: labelstyle,
            prefixIcon: Icon(
              prefix,
              color: color,
            ),
            suffixIcon: suffix != null
                ? IconButton(
                    onPressed: suffixPressed,
                    icon: Icon(
                      suffix,
                    ),
                  )
                : null,
            border: InputBorder.none,
          ),
        ),
      ),
    );

//////////////////////////////////////////////////////
Widget defaultButton({
  double width = double.infinity,
  Color background = accentcolor,
  bool isUpperCase = true,
  double radius = 3.0,
  required Function() function,
  required String text,
}) =>
    Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: const TextStyle(
              color: Colors.white, fontSize: 17, fontFamily: 'SemiBold'),
        ),
      ),
    );

/////////////////////////////////////////
Widget defaultTextButton({
  required Function() function,
  required String text,
}) =>
    TextButton(
      onPressed: function,
      child: Text(
        text.toUpperCase(),
      ),
    );
