import 'package:educational_kids_game/features/splash/presantation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffEB9F4A),
      body: SplashViewBody(),
    );
  }
}
