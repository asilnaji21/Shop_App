import 'package:flutter/material.dart';

class CarsoulaLoading extends StatelessWidget {
  const CarsoulaLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
              color: Colors.grey,
              child: Image.asset(
                'assets/images/offer banner.png',
                fit: BoxFit.contain,
              )),
        ),
      ),
    );
  }
}
