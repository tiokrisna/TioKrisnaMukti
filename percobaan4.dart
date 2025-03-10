import 'dart:io';

void gabunganhuruf(String a, int n) {
  if (n == 0) {
    stdout.write('$a ');
  } else {
    for (int i = 97; i < 99; i++) {
      gabunganhuruf(a + String.fromCharCode(i), n - 1);
    }
  }
}

void main() {
  gabunganhuruf("", 3);
}
