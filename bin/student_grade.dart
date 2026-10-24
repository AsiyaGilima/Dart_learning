Future<void> main() async {
  String studentname = "sakina";
  int score = -6;
  String grade;

  if (score < 0 || score > 100) { 
    grade = 'Invalid Score';
   }else if (score >= 70) {
    grade = 'A';
   }else if (score >= 60){
    grade = 'B';
   }else if (score >= 50){
    grade = 'C';
   }else if (score >= 45){
    grade = 'D';
   }else if (score >= 40){
    grade = 'E';
   }else { 
    grade = 'F';
   }


  print('student Name: $studentname');
  print('student score: $score');
  print('Student Grade: $grade');
}
