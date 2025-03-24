import 'dart:io';

class Mahasiswa implements Comparable<Mahasiswa> {
  String nama;
  String nomor;

  Mahasiswa(this.nomor, this.nama);

  @override
  int compareTo(Mahasiswa other) {
    return nomor.compareTo(other.nomor);
  }

  @override
  String toString() {
    return '$nomor - $nama';
  }
}

class Latihan {
  static void bubbleSort<T extends Comparable<T>>(List<T> arr) {
    int n = arr.length;
    for (int i = 0; i < n - 1; i++) {
      for (int j = 0; j < n - i - 1; j++) {
        if (arr[j].compareTo(arr[j + 1]) > 0) {
          T temp = arr[j];
          arr[j] = arr[j + 1];
          arr[j + 1] = temp;
        }
      }
    }
  }

  static void display<T>(List<T> data) {
    for (T objek in data) {
      print(objek);
    }
    print('');
  }

  static void main() {
    List<Mahasiswa> array = [
      Mahasiswa("02", "Budi"),
      Mahasiswa("01", "Andi"),
      Mahasiswa("04", "Udin"),
      Mahasiswa("03", "Candra"),
      Mahasiswa("05", "Firman Ardiansyah")
    ];

    stdout.write("Data Sebelum Pengurutan:\n");
    display(array);
    Stopwatch stopwatch = Stopwatch()..start();
    bubbleSort(array);
    stopwatch.stop();
    stdout.write("Data Setelah Pengurutan:\n");
    display(array);
    stdout.write("Waktu eksekusi: ${stopwatch.elapsedMilliseconds} ms");
  }
}

void main() {
  Latihan.main();
}
