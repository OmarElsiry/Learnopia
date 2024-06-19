class Levels {
  static List<String> levelsPassed = [];

  static void markLevelAsPassed(String levelId) {
    if (!levelsPassed.contains(levelId)) {
      levelsPassed.add(levelId); // Corrected line to add only levelId
    }
  }

  static int get levelsPassedCount => levelsPassed.length;
}
