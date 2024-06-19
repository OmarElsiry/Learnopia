import 'package:educational_kids_game/core/utils/assets.dart';
import 'package:educational_kids_game/features/in%20side%20app/Kid%20home/presantation/view/widgets/custom_row_icon.dart';
import 'package:educational_kids_game/features/in%20side%20app/Kid%20home/presantation/view/widgets/custom_search.dart';
import 'package:educational_kids_game/features/in%20side%20app/Kid%20home/presantation/view/widgets/custom_view_container.dart';
import 'package:educational_kids_game/features/in%20side%20app/Kid%20home/presantation/view/widgets/row_photo_show.dart';
import 'package:educational_kids_game/features/in%20side%20app/Kid%20home/presantation/view/widgets/row_text_view.dart';
import 'package:educational_kids_game/features/in%20side%20app/unit%20math/presantation/view/unit_math_view.dart';
import 'package:flutter/material.dart';

import '../../../../../pronounce/prounounciation_view.dart';

class KidHomeViewBody extends StatelessWidget {
  const KidHomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final width = mediaQueryData.size.width * 0.02;
    final height = mediaQueryData.size.height * 0.05;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(AssetsData.kidHome),
            const SizedBox(
              height: 15,
            ),
            const CustomRowIcon(),
            Padding(
              padding: const EdgeInsets.only(right: 170),
              child: Column(
                children: [
                  const Text(
                    'New Event, Play?',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'Continue where you left off',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const RowPhotoShow(),
                  const SizedBox(
                    height: 15,
                  ),
                  const RowTextview(
                    title: 'Logical reasoning',
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomViewContainer(
                    ontap: () {
                      Navigator.pushNamed(context, UnitMathView.unitmathid);
                    },
                    color: const Color(0xffF55454).withOpacity(0.6),
                    title: 'math',
                  ),
                  SizedBox(
                    width: width,
                  ),
                  const CostomViewIcon(
                    color: Color(0xffC78FF3),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const RowTextview(
              title: 'Artistic thinking',
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomViewContainer(
                    ontap: () {
                      Navigator.pushNamed(
                          context, ProunounceView.prounounceViewid);
                    },
                    color: const Color(0xff4EE292).withOpacity(0.6),
                    title: 'art',
                  ),
                  SizedBox(
                    width: width,
                  ),
                  CostomViewIcon(
                    color: const Color(0xff0074FF).withOpacity(0.6),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CustomSearch(
                name: 'Search',
                onchanged: (data) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
