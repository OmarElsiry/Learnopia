import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:educational_kids_game/core/utils/assets.dart';
import 'package:educational_kids_game/features/Add%20Kid/presantation/view/widgets/custom_appbar.dart';
import 'package:educational_kids_game/features/Add%20Kid/presantation/view/widgets/show_Row_add_kid.dart';
import 'package:educational_kids_game/features/Notification_Service/local_notification_service.dart';
import 'package:educational_kids_game/features/auth_features/sign_in/presantation/views/widgets/custom_button_sigin.dart';
import 'package:educational_kids_game/features/auth_features/sign_up/presantation/views/widgets/custom_textfield.dart';
import 'package:educational_kids_game/features/navigation_bar_view.dart';
import 'package:flutter/material.dart';

class AddKidViewBody extends StatefulWidget {
  const AddKidViewBody({super.key});
  static String kidname = '';

  @override
  State<AddKidViewBody> createState() => _AddKidViewBodyState();
}

class _AddKidViewBodyState extends State<AddKidViewBody> {
  final GlobalKey<FormState> formkey = GlobalKey();
  CollectionReference users = FirebaseFirestore.instance.collection('saveuser');

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formkey,
        child: Column(
          children: [
            const CustomAppbarAddKid(),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Your Child’s Name',
              style: TextStyle(fontFamily: 'Roboto', fontSize: 18),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: CustomTextField(
                validator: (data) {
                  return 'Please enter your child’s name';
                },
                obscuretext: false,
                name: 'Name',
                onchanged: (data) {
                  setState(() {
                    AddKidViewBody.kidname = data;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const Text(
              'Your Child’s Age',
              style: TextStyle(fontFamily: 'Roboto', fontSize: 18),
            ),
            const SizedBox(
              height: 40,
            ),
            const ShowRowAddKidForm1(),
            const SizedBox(
              height: 20,
            ),
            const ShowRowAddKidForm5(),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomButtonGo(
                color: AddKidViewBody.kidname.isEmpty
                    ? Colors.grey
                    : const Color(0xffEB9F4A),
                Name: 'Go',
                onTap: () async {
                  if (AddKidViewBody.kidname.isEmpty) {
                    if (formkey.currentState!.validate()) {
                      return;
                    }
                  } else {
                    Navigator.pushNamed(
                        context, NavigationBarView.navigationbar);
                    NotificationService notificationService =
                        NotificationService();
                    await notificationService.showZonedScheduledNotifications(
                        3, 'kid games', 'Let`s play kid', 'test');
                  }
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(AssetsData.logoapp),
          ],
        ),
      ),
    );
  }
}
