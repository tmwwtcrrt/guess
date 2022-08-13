import 'dart:io';
import 'game.dart';

int maxRandom = 0;
void main() {
  var game = Game(maxRandom);
  int result = 0;
    stdout.write('║ Enter a maximum number to random: ');
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