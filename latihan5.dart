import 'dart:io';
import 'dart:math';

List<int> data = [];

void generateRandomArray(int max) {
  for (int i = 0; i < max; i++) {
    data.add(Random().nextInt(max));
  }
}

void insertionSort(List<int> arr, bool ascending) {
  int n = arr.length;
  for (int i = 1; i < n; i++) {
    int key = arr[i];
    int j = i - 1;
    while (j >= 0 && (ascending ? arr[j] > key : arr[j] < key)) {
      arr[j + 1] = arr[j];
      j--;
    }
    arr[j + 1] = key;
  }
}

void selectionSort(List<int> arr, bool ascending) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    int minIdx = i;
    for (int j = i + 1; j < n; j++) {
      if (ascending ? arr[j] < arr[minIdx] : arr[j] > arr[minIdx]) {
        minIdx = j;
      }
    }
    int temp = arr[minIdx];
    arr[minIdx] = arr[i];
    arr[i] = temp;
  }
}

void bubbleSort(List<int> arr, bool ascending) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (ascending ? arr[j] > arr[j + 1] : arr[j] < arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
}

void shellSort(List<int> arr, bool ascending) {
  int n = arr.length;
  for (int gap = n ~/ 2; gap > 0; gap ~/= 2) {
    for (int i = gap; i < n; i++) {
      int temp = arr[i];
      int j = i;
      while (
          j >= gap && (ascending ? arr[j - gap] > temp : arr[j - gap] < temp)) {
        arr[j] = arr[j - gap];
        j -= gap;
      }
      arr[j] = temp;
    }
    gap ~/= 2;
  }
}

void quickSort(List<int> arr, int left, int right, bool ascending) {
  if (left < right) {
    int pi = partition(arr, left, right, ascending);
    quickSort(arr, left, pi - 1, ascending);
    quickSort(arr, pi + 1, right, ascending);
  }
}

int partition(List<int> arr, int left, int right, bool ascending) {
  int pivot = arr[right];
  int i = (left - 1);
  for (int j = left; j < right; j++) {
    if (ascending ? arr[j] < pivot : arr[j] > pivot) {
      i++;
      swap(arr, i, j);
    }
  }
  swap(arr, i + 1, right);
  return (i + 1);
}

void swap(List<int> arr, int i, int j) {
  int temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}

void mergeSort(List<int> arr, int left, int right, bool ascending) {
  if (left < right) {
    int median = left + ((right - 1) ~/ 2);
    mergeSort(arr, left, median, ascending);
    mergeSort(arr, median + 1, right, ascending);
    merge(arr, left, median, right, ascending);
  }
}

void merge(List<int> arr, int left, int median, int right, bool ascending) {
  int n1 = median - left + 1;
  int n2 = right - median;
  List<int> L = List<int>.filled(n1, 0);
  List<int> R = List<int>.filled(n2, 0);
  for (int i = 0; i < n1; ++i) {
    L[i] = arr[left + i];
  }

  for (int j = 0; j < n2; ++j) {
    R[j] = arr[median + 1 + j];
  }
  int i = 0, j = 0;
  int k = left;

  while (i < n1 && j < n2) {
    if (ascending ? L[i] <= R[j] : L[i] >= R[j]) {
      arr[k] = L[i];
      i++;
    } else {
      arr[k] = R[j];
      j++;
    }
    k++;
  }

  while (i < n1) {
    arr[k] = L[i];
    i++;
    k++;
  }

  while (j < n2) {
    arr[k] = R[j];
    j++;
    k++;
  }
}

void main() {
  print("=== ALGORITMA SORTING ===");
  print("1. Insertion Sort");
  print("2. Selection Sort");
  print("3. Bubble Sort");
  print("4. Shell Sort");
  print("5. Quick Sort");
  print("6. Merge Sort");
  stdout.write("Pilihan : ");
  int pilihanMethode = int.parse(stdin.readLineSync()!);

  print("1. Ascending");
  print("2. Descending");
  stdout.write("Pilihan : ");
  int pilihanSorting = int.parse(stdin.readLineSync()!);

  // Generate data acak
  generateRandomArray(100);
  int n = data.length;
  print("Unsorted data:\n$data");

  // Mulai pengukuran waktu
  Stopwatch stopwatch = Stopwatch()..start();

  switch (pilihanMethode) {
    case 1:
      insertionSort(data, pilihanSorting == 1);
      break;
    case 2:
      selectionSort(data, pilihanSorting == 1);
      break;
    case 3:
      bubbleSort(data, pilihanSorting == 1);
      break;
    case 4:
      shellSort(data, pilihanSorting == 1);
      break;
    case 5:
      quickSort(data, 0, n - 1, pilihanSorting == 1);
      break;
    case 6:
      mergeSort(data, 0, n - 1, pilihanSorting == 1);
      break;
  }

  stopwatch.stop();

  print("Sorted data:\n$data");
  print("Waktu eksekusi: ${stopwatch.elapsedMilliseconds} ms");
}

