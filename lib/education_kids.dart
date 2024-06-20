import 'package:educational_kids_game/core/utils/approutes.dart';
import 'package:educational_kids_game/core/utils/constant.dart';
import 'package:educational_kids_game/core/utils/screen_size.dart';
import 'package:educational_kids_game/features/sign_in/views/signin_view.dart';
import 'package:educational_kids_game/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class EducationKids extends StatelessWidget {
  const EducationKids({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.initialize(context);

    return MaterialApp(
      // locale: const Locale('en'),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: 'Learnopia',
      theme: ThemeData.light().copyWith(scaffoldBackgroundColor: kprimaryColor),
      routes: Approutes.routes,
      debugShowCheckedModeBanner: false,
      home: const SigninView(),
    );
  }
}
