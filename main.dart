import 'package:educational_kids_game/core/utils/levels_passed.dart';
import 'package:educational_kids_game/education_kids.dart';
import 'package:educational_kids_game/features/Notification_Service/local_notification_service.dart';
import 'package:educational_kids_game/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'features/navigation_bar_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  NotificationService services = NotificationService();
  await services.init();

  await CountLevels.loadCountLevelsPassed();
  await LoggedBoolClass.loadCountLevelsPassed();

  if (LoggedBoolClass.loggedpoolCount > 0) {
    runApp(const MaterialApp(home: NavigationBarView()));
  } else {
    runApp(const EducationKids());
  }
}
