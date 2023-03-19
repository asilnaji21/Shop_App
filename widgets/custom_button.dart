import 'package:flutter/material.dart';

class CutomButton extends StatelessWidget {
  String text;
  VoidCallback? onTap;
  CutomButton({this.onTap, required this.text});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        height: 60,
        child: Center(
            child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        )),
      ),
    );
  }
}
