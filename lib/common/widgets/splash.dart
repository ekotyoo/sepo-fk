import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF8F94FF),
      child: Column(
        children: [
          const Spacer(),
          Image.asset('assets/images/app_logo_white.png', width: 150, height: 150),
          const Spacer(),
          Image.asset('assets/images/app_logo_text.png', width: 50),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
