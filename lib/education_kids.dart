import 'package:educational_kids_game/constant.dart';
import 'package:educational_kids_game/core/utils/approutes.dart';
import 'package:educational_kids_game/core/utils/screen_size.dart';
import 'package:educational_kids_game/features/auth_features/sign_in/presantation/view_models/Sign_in_cubit/sign_in_cubit.dart';
import 'package:educational_kids_game/features/auth_features/sign_in/presantation/views/signin_view.dart';
import 'package:educational_kids_game/features/auth_features/sign_up/presantation/views_model/sign%20up%20cubit/sign_up_cubit.dart';
import 'package:educational_kids_game/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class EducationKids extends StatelessWidget {
  const EducationKids({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.initialize(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SignUpCubit(),
        ),
        BlocProvider(
          create: (context) => SignInCubit(),
        ),
      ],
      child: MaterialApp(
        // locale: const Locale('en'),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        title: 'Learnopia',
        theme:
            ThemeData.light().copyWith(scaffoldBackgroundColor: kprimaryColor),
        routes: Approutes.routes,
        debugShowCheckedModeBanner: false,
        home: const SigninView(),
      ),
    );
  }
}
