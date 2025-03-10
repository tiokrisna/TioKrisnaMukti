import 'dart:io';

int segitigaPascal(int baris, int kolom) {
  if (kolom == 0 || kolom == baris) {
    return 1;
  }
  return segitigaPascal(baris - 1, kolom - 1) + segitigaPascal(baris - 1, kolom);
}

void main() {
  int n = 5;

  print("===Program Segitiga Pascal===");

  for (int i = 0; i < n; i++) {
    stdout.write('F${i + 1}\t');
    stdout.write(' ' * (n - i));

    for (int j = 0; j <= i; j++) {
      stdout.write('${segitigaPascal(i, j)} ');
    }
    print('');
  }
}
