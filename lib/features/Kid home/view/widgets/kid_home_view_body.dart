import 'package:educational_kids_game/core/utils/assets.dart';
import 'package:educational_kids_game/core/utils/screen_size.dart';
import 'package:educational_kids_game/features/Kid%20home/view/widgets/custom_row_icon.dart';
import 'package:educational_kids_game/features/Kid%20home/view/widgets/custom_view_container.dart';
import 'package:educational_kids_game/features/Kid%20home/view/widgets/row_text_view.dart';
import 'package:educational_kids_game/features/unit%20math/view/vids_view.dart';
import 'package:flutter/material.dart';

class KidHomeViewBody extends StatelessWidget {
  const KidHomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(AssetsData.kidHome),
            SizedBox(
              height: ScreenSize.height * 0.005,
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
                  SizedBox(
                    height: ScreenSize.height * 0.005,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SingleChildScrollView(
                      clipBehavior: Clip.none,
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                              width:
                                  ScreenSize.width * 0.001), // Optional spacer
                          Stack(
                            // Stack for layering image and lock icon
                            alignment: Alignment
                                .center, // Center content within the Stack
                            children: [
                              ColorFiltered(
                                colorFilter: const ColorFilter.matrix(
                                  <double>[
                                    0.2126, 0.7152, 0.0722, 0, 0, 0.2126,
                                    0.7152, 0.0722, 0.0, 0, 0.2126, 0.7152,
                                    0.0722, 0, 0, 0.0, 0.0, 0.0, 1.0,
                                    0, // Preserve alpha channel
                                  ],
                                ),
                                child: Image.asset(
                                  'assets/images/Rectangle 48.png',
                                  width: ScreenSize.width * 0.475,
                                ),
                              ),
                              const Icon(
                                Icons.lock_outline,
                                color: Color.fromARGB(
                                    180, 0, 0, 0), // Darker shade of grey
                                size: 99.0, // Adjust size as needed
                              ),
                            ],
                          ),
                          SizedBox(width: ScreenSize.width * 0.01),
                          Stack(
                            // Repeat for second image with lock
                            alignment: Alignment
                                .center, // Center content within the Stack
                            children: [
                              ColorFiltered(
                                colorFilter: const ColorFilter.matrix(
                                  <double>[
                                    0.2126, 0.7152, 0.0722, 0, 0, 0.2126,
                                    0.7152, 0.0722, 0.0, 0, 0.2126, 0.7152,
                                    0.0722, 0, 0, 0.0, 0.0, 0.0, 1.0,
                                    0, // Preserve alpha channel
                                  ],
                                ),
                                child: Image.asset(
                                  'assets/images/Rectangle 49.png',
                                  width: ScreenSize.width * 0.475,
                                ),
                              ),
                              const Icon(
                                Icons.lock_outline,
                                color: Color.fromARGB(
                                    180, 0, 0, 0), // Darker shade of grey
                                size: 99.0, // Adjust size as needed
                              ),
                            ],
                          ),
                          SizedBox(
                              width:
                                  ScreenSize.width * 0.001), // Optional spacer
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScreenSize.height * 0.005,
                  ),
                  const RowTextview(
                    title: 'Logical reasoning',
                  )
                ],
              ),
            ),
            SizedBox(
              height: ScreenSize.height * 0.005,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomViewContainer(
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VidsPassValues(
                                  videoUrls: [
                                    "https://youtu.be/DIu18WtwNVU",
                                    "https://youtu.be/BTb0vCW6rKk",
                                    "https://youtu.be/_FyJyurljoM",
                                    "https://www.youtube.com/watch?v=BY81yNttfpg",
                                    "https://www.youtube.com/watch?v=n04EBjwPULE",
                                    "https://www.youtube.com/watch?v=2eRQAzsJ7fk",
                                    "https://www.youtube.com/watch?v=p6SfuiZmBfk",
                                    "https://www.youtube.com/watch?v=q3SFXQfE4kk"
                                  ],
                                )),
                      );
                    },
                    color: const Color(0xffF55454).withOpacity(0.6),
                    title: 'math',
                  ),
                  SizedBox(
                    width: ScreenSize.width * 0.01,
                  ),
                  const CostomViewIcon(
                    color: Color(0xffC78FF3),
                  )
                ],
              ),
            ),
            SizedBox(
              height: ScreenSize.height * 0.005,
            ),
            const RowTextview(
              title: 'English basics',
            ),
            SizedBox(
              height: ScreenSize.height * 0.015,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomViewContainer(
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VidsPassValues(
                                  videoUrls: [
                                    "https://www.youtube.com/watch?v=H1cELUetPFM",
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                    "https://www.youtube.com/watch?v=4MCKxQcFg6U",
                                    "https://www.youtube.com/watch?v=75p0YeecIAc",
                                    "https://www.youtube.com/watch?v=H1cELUetPFM",
                                    "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                                    "https://www.youtube.com/watch?v=4MCKxQcFg6U",
                                    "https://www.youtube.com/watch?v=75p0YeecIAc",
                                  ],
                                )),
                      );
                    },
                    color: const Color(0xff4EE292).withOpacity(0.6),
                    title: 'Englsih ',
                  ),
                  SizedBox(
                    width: ScreenSize.width * 0.01,
                  ),
                  CostomViewIcon(
                    color: const Color(0xff0074FF).withOpacity(0.6),
                  )
                ],
              ),
            ),
         
          ],
        ),
      ),
    );
  }
}
