import 'dart:io';
import 'dart:math';
//สร้างคลาส
// camel case
class Game {
  int maxRandom = 0;//instance field
  Game(maxRandom) {
    var game = Game(maxRandom);
    var r = Random();
    maxRandom = r.nextInt(100) + 1;


  }

  int doGuess(int num){
    if (num > maxRandom){
      print('║ ➜ $num is TOO HIGH! ▲');
      print('║──────────────────────────────────────────');
      return 0;
    } else if(num < maxRandom){
      print('║ ➜ $num is TOO LOW! ▼');
      print('║──────────────────────────────────────────');
      return 0;
    } else {
      print('║ ➜ $num is CORRECT! ❤');
      print('║──────────────────────────────────────────');
      print('║              THE END');
      print('╚══════════════════════════════════════════');
      return 1;
    }
  }
}
//hw ถามว่าเล่นต่อมั้ยตอบyes/no