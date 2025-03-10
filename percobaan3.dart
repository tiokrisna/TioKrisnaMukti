import 'dart:io';

int ambilNilaiRekursif(int number, int index) {
  if (index == 1) {
    return 1;
  } else if (number % index == 0) {
    return 1 + ambilNilaiRekursif(number, --index);
  } else {
    return 0 + ambilNilaiRekursif(number, --index);
  }
}

bool cekBilanganPrima(int p) {
  if (p > 1) {
    return (ambilNilaiRekursif(p, p) == 2);
  } else {
    return false;
  }
}

void main() {
  stdout.write("Masukkan bilangan: ");
  int p = int.parse(stdin.readLineSync()!);

  if (cekBilanganPrima(p)) {
    print("Bilangan Prima");
  } else {
    print("Bukan Bilangan Prima");
  }
}
