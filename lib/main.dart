import 'package:educational_kids_game/core/helper/system_ui_overlay_style.dart';
import 'package:educational_kids_game/core/utils/levels_passed.dart';
import 'package:educational_kids_game/education_kids.dart';
import 'package:educational_kids_game/features/Notification_Service/local_notification_service.dart';
import 'package:educational_kids_game/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  NotificationService services = NotificationService();
  await services.init();
  SystemUiOverlayStyle systemUiOverlayStyle =
      SystemUiOverlayStyle2.systemUiOver();
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  await CountLevels.loadCountLevelsPassed();

  runApp(const EducationKids());
}
