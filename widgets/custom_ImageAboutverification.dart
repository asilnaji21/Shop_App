import 'package:flutter/cupertino.dart';

import '../styles/colors.dart';

class ImageAboutverification extends StatelessWidget {
  String title;
  String subtitle;
  ImageAboutverification({required this.title, required this.subtitle});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: CustomOtpImage(),
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          title,
          style:
              const TextStyle(color: black, fontSize: 22, fontFamily: 'roboto'),
        ),
        const SizedBox(
          height: 18,
        ),
        Text(
          subtitle,
          style:
              const TextStyle(color: grey, fontSize: 14, fontFamily: 'roboto'),
        ),
      ],
    );
  }
}

class CustomOtpImage extends StatelessWidget {
  const CustomOtpImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/otp.png',
        ),
        Positioned(
            left: 50,
            top: 40,
            child: Image.asset('assets/images/otpimage.png')),
      ],
    );
  }
}
