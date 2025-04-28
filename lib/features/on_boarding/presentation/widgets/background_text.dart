import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class BackGroundImageAndText extends StatelessWidget {
  const BackGroundImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset('assets/icons/background.svg'),
        Image.asset('assets/doctor.png'),

      ]
    );
  }
}
