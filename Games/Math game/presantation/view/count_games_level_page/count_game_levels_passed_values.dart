class LevelConstructor {
  final String correctAnswer;
  final List<String> rectangleValues;
  final String quizQuestion;

  LevelConstructor({
    required this.correctAnswer,
    required this.rectangleValues,
    required this.quizQuestion,
  });

  static LevelConstructor firstLevelConstructor() {
    return LevelConstructor(
      correctAnswer: '6',
      rectangleValues: ['1', '4', '6', '9'],
      quizQuestion: 'What is total count?',
    );
  }

  static LevelConstructor secondLevelConstructor() {
    return LevelConstructor(
      correctAnswer: '5',
      rectangleValues: ['5', '50', '20', '9'],
      quizQuestion: 'What is their count -1?',
    );
  }

  static LevelConstructor thirdLevelConstructor() {
    return LevelConstructor(
      correctAnswer: '10',
      rectangleValues: ['10', '50', '20', '09'],
      quizQuestion: 'What is your age?',
    );
  }

  static LevelConstructor fourthLevelConstructor() {
    return LevelConstructor(
      correctAnswer: '50',
      rectangleValues: ['10', '50', '20', '09'],
      quizQuestion: 'What is your age?',
    );
  }

  static LevelConstructor fifthLevelConstructor() {
    return LevelConstructor(
      correctAnswer: 's',
      rectangleValues: ['s', '50', '20', '09'],
      quizQuestion: 'What is your age?',
    );
  }

  static LevelConstructor sixthLevelConstructor() {
    return LevelConstructor(
      correctAnswer: 'sd',
      rectangleValues: ['10', '50', 'sd', '09'],
      quizQuestion: 'What is your age?',
    );
  }

  static LevelConstructor seventhLevelConstructor() {
    return LevelConstructor(
      correctAnswer: 'qwe3',
      rectangleValues: ['10', '50', '20', 'qwe3'],
      quizQuestion: 'What is your age?',
    );
  }

  static LevelConstructor eightLevelConstructor() {
    return LevelConstructor(
      correctAnswer: '01',
      rectangleValues: ['01', '50', '20', '09'],
      quizQuestion: 'What is your age?',
    );
  }
}
