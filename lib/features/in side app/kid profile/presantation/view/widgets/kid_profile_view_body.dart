import 'package:educational_kids_game/features/in%20side%20app/kid%20profile/presantation/view/widgets/custom_appbar.dart';
import 'package:educational_kids_game/features/in%20side%20app/kid%20profile/presantation/view/widgets/custom_following_view.dart';
import 'package:educational_kids_game/features/in%20side%20app/kid%20profile/presantation/view/widgets/custom_invite_yr_friend.dart';
import 'package:educational_kids_game/features/in%20side%20app/kid%20profile/presantation/view/widgets/friends_updates.dart';
import 'package:educational_kids_game/features/in%20side%20app/kid%20profile/presantation/view/widgets/info_profile.dart';
import 'package:educational_kids_game/features/in%20side%20app/kid%20profile/presantation/view/widgets/view_results.dart';
import 'package:flutter/material.dart';

class KidProfileViewBody extends StatelessWidget {
  const KidProfileViewBody({super.key});
  final int indexpage = 2;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.10,
          ),
          const Flexible(
            fit: FlexFit.loose,
            child: CustomAppBarProfile(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.035,
          ),
          const InfoProfile(),
          const SizedBox(
            height: 15,
          ),
          const Divider(thickness: 2),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: FriendsUpdates(),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 210),
            child: Text(
              'Statistics',
              style: TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Viewresults(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Friends',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                'ADD FRIENDS',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff02A1FB),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: CustomFOLLOWINGView(),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: InviteYourFriends(),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
