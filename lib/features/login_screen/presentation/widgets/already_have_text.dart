import 'package:docway/core/generated/locale_keys.g.dart';
import 'package:docway/core/theme/text_themes/text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(text:TextSpan(children: [
      TextSpan(text: LocaleKeys.auth_not_have_account.tr(),style: TextThemes.font13LightBlackRegular),
      TextSpan(text: "  Sign up",style: TextThemes.font13BlueRegular)
    ]),);
  }
}
