import 'package:flutter/material.dart';

import 'presentation/view/widgets/prounounce_view_body.dart';

class ProunounceView extends StatelessWidget {
  final String targetWord;

  const ProunounceView({Key? key, required this.targetWord}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PronounceViewBody(targetWord: "school"), // Use the targetWord here
    );
  }
}
