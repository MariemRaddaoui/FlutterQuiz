class Score {
  static int score = 0;

  static void add(int questResult) {
    score += questResult;
  }

  static int calculateScore() {
    return score;
  }
}
