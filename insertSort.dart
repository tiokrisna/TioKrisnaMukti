// import 'dart:io';

// void insetSort(List<int> arr) {
//   int n = arr.length;
//   for (int i = 1; i < n; i++) {
//     int key = arr[i];
//     int j = i - 1;

//     while (j >= 0 && arr[j] > key) {
//       arr[j + 1] = arr[j];
//     }
//     arr[j + 1] = key;
//   }
// }

// void hasilSort(List<int> arr) {
//   stdout.write("Hasil Pengurutan: ");
//   for (int i = 0; i < arr.length; i++) {
//     stdout.write("${arr[i]} ${' '}");
//   }
// }

void insertionSort<T extends Comparable<T>>(List<T> arr) {
  for (int i = arr.length - 1; i >= 0; i--) {
    for (int j = i + 1, k = i; j < arr.length; j++) {
      if (arr[j].compareTo(arr[k]) > 0) {
        break;
      } else {
        T temp = arr[k];
        arr[k] = arr[j];
        arr[j] = temp;
        k = j;
      }
    }
  }
}

void display<T>(List<T> data) {
  for (T obj in data) {
    print('$obj ');
  }
  print('');
}

void main() {
  List<num> data = List<num>.generate(10, (index) => (index + 1) * 2);
  data.shuffle();
  print('Data Sebelum Pengurutan:');
  display(data);

  Stopwatch stopwatch = Stopwatch()..start();
  insertionSort<num>(data);
  print('Data Setelah Pengurutan:');
  display(data);
  stopwatch.stop();
  print("Waktu eksekusi: ${stopwatch.elapsedMilliseconds} ms");
}
