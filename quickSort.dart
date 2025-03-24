// import 'pivot.dart';
// import 'dart:io';

// void main() {
//   List<int> arr = [10, 7, 8, 9, 1, 5];
//   int n = arr.length;

//   quickSort(arr, 0, n - 1);
//   stdout.write("Sorted List:\n");
//   printArray(arr);
// }

import 'dart:io';
import 'dart:math';

List<int> arr = [];

void generateRandomArray(int max) {
  for (int i = 0; i < max; i++) {
    arr.add(Random().nextInt(max));
  }
}

void saveToCSV(List<int> arr, String filename) async {
  final file = File('$filename.csv');
  String csvData = arr.join(','); // Mengonversi list menjadi format CSV
  await file.writeAsString(csvData);
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
  generateRandomArray(50);
  print(arr);
  saveToCSV(arr, "random_numbers");
  Stopwatch stopwatch = Stopwatch()..start();
  quickSort(arr, 0, arr.length - 1);
  print(arr);
  stopwatch.stop();
  print("Waktu eksekusi: ${stopwatch.elapsedMilliseconds} ms");
}

// void main() { 
//   List<num> data = List.generate(10, (index) => (index + 1)..toDouble()); 
//   printData(data); 
 
//   DateTime startTime = DateTime.now(); 
//   quickSort(data, 0, data.length - 1); 
//   Duration elapsedTime = DateTime.now().difference(startTime); 
 
//   printData(data); 
//   print('Waktu ${elapsedTime.inMilliseconds}'); 
// } 
 
// void quickSort<T extends Comparable<T>>(List<T> arr, int p, int r) { 
//   int q; 
//   if (p < r) { 
//     q = partition(arr, p, r); 
//     quickSort(arr, p, q); 
//     quickSort(arr, q + 1, r); 
//   } 
// } 
 
// int partition<T extends Comparable<T>>(List<T> arr, int p, int r) { 
//   int i, j; 
//   T pivot, temp; 
//   pivot = arr[p]; 
//   i = p; 
//   j = r; 
//   while (i <= j) { 
//     while (pivot.compareTo(arr[j]) < 0) j--; 
//     while (pivot.compareTo(arr[i]) > 0) i++; 
//     if (i < j) { 
//       temp = arr[i]; 
//       arr[i] = arr[j]; 
//       arr[j] = temp; 
//       j--; 
//       i++; 
//     } else { 
//       return j; 
//     } 
//   } 
//   return j; 
// } 
 
// void printData<T>(List<T> data) { 
//   for (T objek in data) { 
//     print('$objek '); 
//   } 
//   print(''); 
// }
