import 'package:educational_kids_game/features/unit%20math/view/widgets/vids_view_body.dart';
import 'package:flutter/material.dart';


class VidsPassValues extends StatelessWidget {
  final List<String> videoUrls;

  const VidsPassValues({required this.videoUrls, super.key}); // Use required for non-null values

  @override
  Widget build(BuildContext context) {
    return VidsPageConatiners(
      videoUrls: videoUrls,
    );
  }
}

