//import 'dart:io';
import 'dart:math';

//import 'hello.dart';

enum result{
  tooHigh,
  tooLow,
  correct
}

class Game{        //ชื่อ class ใช้ตัวพิมพ์ใหญ่ตัวแรกเท่านั้น
  static const defaultMaxRandom = 100;
  int answer = 0;  //instance field
  int count = 0;

  Game({int? maxRandom}){             //{} แสดงให้รู้ว่า maxRandom เป็น main parameter
    var r = Random();
    answer = r.nextInt(maxRandom!) + 1;   //สุ่มเลขตั้งแต่ 1-100
    print('คำตอบคือ $answer');
  }

  int doGuess(int num){        //method
    if(num > answer){
      print('║ ➜ $num is TOO HIGH! ▲');
      print('╟────────────────────────────────────────────');
      count++;
      return 0;
    } else if(num < answer){
      print('║ ➜ $num is TOO LOW! ▼');
      print('╟────────────────────────────────────────────');
      count++;
      return 0;
    } else{
      count++;
      print('║ ➜ $num is CORRECT ❤️, Total guesses : $count');
      print('╟────────────────────────────────────────────');
      return 1;
    }
  }

}