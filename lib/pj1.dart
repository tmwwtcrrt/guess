import 'dart:io';
import 'game.dart';

void main() {
  var game = Game();
  int result = 0;
  print('╔══════════════════════════════════════════');
  print('║          GUESS THE NUMBER');
  print('║──────────────────────────────────────────');
  do{

    stdout.write('║ Guess the number between 1 and 100: ');

    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);

    if (guess == null){
      continue;
    }

    result = game.doGuess(guess);
  } while (result !=1);
}