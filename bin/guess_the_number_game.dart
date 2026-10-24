import 'dart:io';
import 'dart:math';
void main() {
  bool playAgain = true;
  printWelcome();
  while (playAgain) {
    playGame();
    playAgain = askToPlayAgain();
  }
  print('\n========================================');
  print(' Thank you for playing!');
  print(' Keep learning. Keep building. Keep growing.');
  print(' - TechAngell');
  print('========================================');
}
void printWelcome() {
  print('\n========================================');
  print('       TECHANGELL PRESENTS');
  print('       NUMBER CHALLENGE');
  print('========================================');
  print('Welcome, Player!');
  print('Test your logic, intuition, and problem-solving skills.');
  print('Choose a difficulty and try to find the secret number.');
  print('========================================\n');
}
void playGame() {
  final random = Random();
  int maxNumber;
  int difficulty;
  int attempts = 0;
  print('SELECT YOUR DIFFICULTY');
  print('1. Easy   (1-20)');
  print('2. Medium (1-50)');
  print('3. Hard   (1-100)');
  while (true) {
    stdout.write('\nEnter your choice (1-3): ');
    String input = stdin.readLineSync() ?? '';
    difficulty = int.tryParse(input) ?? 0;
    if (difficulty >= 1 && difficulty <= 3) {
      break;
    }
    print('Invalid choice. Please select 1, 2, or 3.');
  }
  switch (difficulty) {
    case 1:
      maxNumber = 20;
      break;
    case 2:
      maxNumber = 50;
      break;
    default:
      maxNumber = 100;
  }
  final secretNumber = random.nextInt(maxNumber) + 1;
  print('\n----------------------------------------');
  print('Difficulty selected: ${getDifficultyName(difficulty)}');
  print('I have selected a number between 1 and $maxNumber.');
  print('Can you guess it?');
  print('----------------------------------------');
  while (true) {
    stdout.write('\nEnter your guess: ');
    final input = stdin.readLineSync() ?? '';
    final guess = int.tryParse(input);
    if (guess == null) {
      print('Invalid input. Enter a whole number.');
      continue;
    }
    if (guess < 1 || guess > maxNumber) {
      print('Your guess must be between 1 and $maxNumber.');
      continue;
    }
    attempts++;
    if (guess < secretNumber) {
      print('Too low! Try a higher number.');
    } else if (guess > secretNumber) {
      print('Too high! Try a lower number.');
    } else {
      final score = calculateScore(maxNumber, attempts);
      print('\n========================================');
      print('           CONGRATULATIONS!');
      print('========================================');
      print('You guessed the secret number: $secretNumber');
      print('Difficulty: ${getDifficultyName(difficulty)}');
      print('Attempts used: $attempts');
      print('Your score: $score points');
      print('Excellent work, Player!');
      print('========================================');
      break;
    }
  }
}
String getDifficultyName(int difficulty) {
  switch (difficulty) {
    case 1:
      return 'Easy';
    case 2:
      return 'Medium';
    default:
      return 'Hard';
  }
}
int calculateScore(int maxNumber, int attempts) {
  int baseScore = maxNumber * 10;
  int penalty = (attempts - 1) * 10;
  int score = baseScore - penalty;
  return score < 10 ? 10 : score;
}
bool askToPlayAgain() {
  while (true) {
    stdout.write('\nWould you like to play again? (yes/no): ');
    final answer = (stdin.readLineSync() ?? '').trim().toLowerCase();
    if (answer == 'yes' || answer == 'y') {
      return true;
    }
    if (answer == 'no' || answer == 'n') {
      return false;
    }
    print('Please enter yes or no.');
  }
}