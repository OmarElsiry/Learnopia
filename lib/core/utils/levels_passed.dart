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

class LoggedBoolClass {
  static List<String> loggedBool = [];

  static void addloggedBool (String Logged) {
    if (!loggedBool.contains(Logged)) {
      loggedBool.add(Logged);
      saveLogged();
    }
  }

  static int get loggedpoolCount => loggedBool.length;

  static Future<void> saveLogged() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setStringList('loggedBool', loggedBool);
  }

  static Future<void> loadCountLevelsPassed() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    loggedBool = sharedPreferences.getStringList('loggedBool') ?? [];
  }
}
