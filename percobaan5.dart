import 'dart:io';

int pangkatRekursif(int x, int y) {
  if (y == 0) {
    return 1;
  } else {
    return x * pangkatRekursif(x, y - 1);
  }
}

void main() {
  stdout.write("Bilangan = x, pangkat = y : \n");
  stdout.write("x : ");
  int x = int.parse(stdin.readLineSync()!);

  stdout.write("y : ");
  int y = int.parse(stdin.readLineSync()!);

  print("$x dipangkatkan $y = ${pangkatRekursif(x, y)}");
}
