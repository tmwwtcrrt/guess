import 'dart:io';
import 'dart:math';
//สร้างคลาส
// camel case
class Game {
  int answer = 0;  //instance field
  Game() {
    var r = Random();
    answer = r.nextInt(100) + 1;
    //print('คำตอบคือ $answer');
  }

  int doGuess(int num){
    if (num > answer){
      print('║ ➜ $num is TOO HIGH! ▲');
      print('║──────────────────────────────────────────');
      return 0;
    } else if(num < answer){
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