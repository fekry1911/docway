import 'package:docway/features/on_boarding/presentation/widgets/background_text.dart';
import 'package:docway/features/on_boarding/presentation/widgets/logo_and_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/text_themes/text.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            LogoAndName(),
            BackGroundImageAndText()
          ],
        ),
      ),

    );
  }
}
