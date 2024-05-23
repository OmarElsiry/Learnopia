class GameLogic {
  int currentLevel = 0;

  void nextLevel() {
    currentLevel++;
    // Implement game logic for advancing levels here
  }

  String getLevelMessage() {
    return currentLevel.toString();
  }
}
