// void quickSort(List<int> arr, int left, int right) {
//   if (left < right) {
//     int pi = partition(arr, left, right);
//     quickSort(arr, left, pi - 1);
//     quickSort(arr, pi + 1, right);
//   }
// }

// void swap(List<int> arr, int i, int j) {
//   int temp = arr[i];
//   arr[i] = arr[j];
//   arr[j] = temp;
// }

// int partition(List<int> arr, int left, int right) {
//   int pivot = arr[right];
//   int i = (left - 1);
//   for (int j = left; j <= right - 1; j++) {
//     if (arr[j] < pivot) {
//       i++;
//       swap(arr, i, j);
//     }
//   }
//   swap(arr, i + 1, right);
//   return (i + 1);
// }

// void printArray(List<int> arr) {
//   int n = arr.length;
//   for (int i = 0; i < n; i++) {
//     print("${arr[i]}");
//   }
//   print('');
// }

import 'dart:io';
import 'dart:math';

List<int> arr = [];

void generateRandomArray(int max) {
  for (int i = 0; i < max; i++) {
    arr.add(Random().nextInt(max));
  }
}

void quickSort(List<int> arr, int low, int high) {
  if (low < high) {
    int pi = partition(arr, low, high);
    quickSort(arr, low, pi - 1);
    quickSort(arr, pi + 1, high);
  }
}

int partition(List<int> arr, int low, int high) {
  int pivot = arr[high];
  int i = (low - 1);
  for (int j = low; j <= high - 1; j++) {
    if (arr[j] < pivot) {
      i++;
      swap(arr, i, j);
    }
  }
  swap(arr, i + 1, high);
  return (i + 1);
}

void swap(List<int> arr, int i, int j) {
  int temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}

void main() {
  stdout.write("Masukkan Jumlah data: ");
  int jumlah = int.parse(stdin.readLineSync()!);
  generateRandomArray(jumlah);
  //print("Belom di Sort cok : ${arr}");
  DateTime start = DateTime.now();
  quickSort(arr, 0, arr.length - 1);
  print(arr);
  Duration elapsedTime = DateTime.now().difference(start);
  print('Waktu: ${elapsedTime.inMilliseconds} ms');
}
