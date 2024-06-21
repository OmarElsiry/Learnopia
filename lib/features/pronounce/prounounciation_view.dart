import 'package:flutter/material.dart';

import 'presentation/view/widgets/prounounce_view_body.dart';

class ProunounceView extends StatelessWidget {
  const ProunounceView({super.key});
  static String prounounceViewid = 'Prounounce View';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PronounceViewBody(targetWord: "school"),
    );
  }
}
