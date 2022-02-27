import 'dart:math';
import 'dart:convert';

void main() {
  listBoardGame();
  randomNumber();
}

void listBoardGame() {
  int select = randomNumber();
  var arr = [
    ['name 0 ', "pic 0" , "link 0" ],
    ['b'],
    ['c'],
    ['d'],
    ['e']
  ];

  print(arr[select]);
}

int randomNumber() {
  Random random = new Random();
  int randomNumber = random.nextInt(10); // from 0 - 9 included

  return randomNumber;
}
