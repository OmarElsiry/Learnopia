import 'package:educational_kids_game/core/helper/shared_pref_helper.dart';

class Levels {
  static List<String> levelsPassed = [];

  static void markLevelAsPassed(String levelId) {
    if (!levelsPassed.contains(levelId)) {
      levelsPassed.add(levelId);
      // Corrected line to add only levelId
      SharedPrefHelper.setData(levelsPassed as String, levelId);
    }
  }

  static int get levelsPassedCount => levelsPassed.length;
}
