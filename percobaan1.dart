import 'dart:io';

num f(int n) {
  if (n == 1) {
    return n;
  } else {
    return n * f(n - 1);
  }
}

void main() {
  stdout.write("N = ");
  int n = int.parse(stdin.readLineSync()!);
  print("Hasil = ${f(n)}");
}
