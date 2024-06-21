import 'package:shared_preferences/shared_preferences.dart';

class CountLevels {
  static List<String> levelsPassed = [];

  static void addCountLevel(String levelId) {
    if (!levelsPassed.contains(levelId)) {
      levelsPassed.add(levelId);
      saveCountLevelsPassed();
    }
  }

  static int get passedLevelsCount => levelsPassed.length;

  static Future<void> saveCountLevelsPassed() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setStringList('levelsPassed', levelsPassed);
  }

  static Future<void> loadCountLevelsPassed() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    levelsPassed = sharedPreferences.getStringList('levelsPassed') ?? [];
  }
}

