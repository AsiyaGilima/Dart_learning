String calculateGrade(int score) {
  if (score < 0 || score > 100) {
    return "Invalid Score";
  } else if (score >= 70) {
    return "A";
  } else if (score >= 60) {
    return "B";
  } else if (score >= 50) {
    return "C";
  } else if (score >= 45) {
    return "D";
  } else if (score >= 40) {
    return "E";
  } else {
    return "F";
  }
}
