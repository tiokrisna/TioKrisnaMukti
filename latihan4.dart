import 'dart:io';

int pergerakan = 0;

void menaraHanoi(int n, String from, String to, String aux) {
  if (n == 1) {
    print("Pindahkan pin $n dari tiang $from ke tiang $to");
    pergerakan++;
    return;
  }
  menaraHanoi(n - 1, from, aux, to);
  print("Pindahkan pin $n dari tiang $from ke tiang $to");
  pergerakan++;
  menaraHanoi(n - 1, aux, to, from);
}

void main() {
  print("==== Program Menara Hanoi ====");
  stdout.write("Masukkan jumlah pin : ");
  int jumlahPin = int.parse(stdin.readLineSync()!);
  menaraHanoi(jumlahPin, "A", "C", "B");
  print("Total pergerakan: $pergerakan");
}
