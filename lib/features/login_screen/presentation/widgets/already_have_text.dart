import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart' show MaterialPageRoute;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/debendency_injection.dart';
import '../../../../core/theme/text_themes/text.dart';
import '../../../register_screen/cubit/register_cubit.dart';
import '../../../register_screen/presentation/register_screen.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Don't have an account?",
            style: TextThemes.font13LightBlackRegular,
          ),
          TextSpan(
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => BlocProvider(
                              create:
                                  (BuildContext context) =>
                                      getIt<RegisterCubit>(),
                              child: Register(),
                            ),
                      ),
                    );
                  },
            text: "  Sign up",
            style: TextThemes.font13BlueRegular,
          ),
        ],
      ),
    );
  }
}
