//เกมทายเลข
import 'dart:io';
//import 'package:flutter/material.dart';
import 'package:guess/game.dart';

void main() {
  var game;
  var b = 0;
  int count1 = 0;
  int round = 0;
  var myList = <int>[];

  stdout.write('Enter the maximum number to random : ');
  var input = stdin.readLineSync();
  var f = int.tryParse(input!);
  if (f == null) {
    game = Game(maxRandom: 100);
    b = 100;
  }
  else{
    game = Game(maxRandom: f);
    b = f;
  }

  int result = 0;
  print('╔════════════════════════════════════════════');
  print('║             GUESS THE NUMBER           ');
  print('╟────────────────────────────────────────────');
  do {
    stdout.write('║ Guess the number between 1 and $b : '); //print แบบไม่ขึ้นบรรทัดใหม่
    var input2 = stdin.readLineSync();
    var guess = int.tryParse(input2!);
    if (guess == null) {
      continue;
    }

    result = game.doGuess(guess);
    count1++;

  } while (result == 0);
  print('║                 THE END              ');
  print('╚════════════════════════════════════════════');

  round++;
  myList.add(count1);

  //ถามผู้เล่นว่าเล่นอีกหรือไม่
  //int r = 0;
  for(;;){
    stdout.write('Play again? (Y/N): ');
    var ask = stdin.readLineSync();
    if(ask == 'y' || ask == 'Y'){
      main();
    }else if(ask == 'n' || ask == 'N'){
      print("You've played $round games");
      for(var i = 0; i < myList.length; i++){
        print("🚀 Game #${i+1}: ${myList[i]} guesses" );
      }
      break;
    }else if (ask != 'y' && ask != 'Y' && ask != 'n' && ask != 'N') {
      continue;
    }
  }


}