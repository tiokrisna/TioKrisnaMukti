// import 'dart:io';

// void bubleSort(List<int> arr) {
//   int n = arr.length;
//   for (int i = 0; i < n - 1; i++) {
//     for (int j = 0; j < n - i - 1; j++) {
//       if (arr[j] > arr[j + 1]) {
//         int swap = arr[j];
//         arr[j] = arr[j + 1];
//         arr[j + 1] = swap;
//       }
//     }
//   }
// }

// void hasilSort(List<int> arr) {
//   stdout.write("Hasil Pengurutan: ");
//   for (int i = 0; i < arr.length; i++) {
//     stdout.write("${arr[i]} ${' '}");
//   }
// }

// void infoBuble() {
//   List<int> arr = [12, 11, 13, 5, 6];
//   print("Buble Sort");
//   DateTime now = DateTime.now();
//   bubleSort(arr);
//   DateTime end = DateTime.now();
//   stdout.write("Unsorted List: $arr\nHasil Pengurutan: $arr\n");
//   print("Waktu yang diperlukan: ${end.difference(now).inMilliseconds} ms");
// }

// void main() {
//   infoBuble();
// }

// void bubbleSortFlag<T extends Comparable<T>>(List<T> arr) { 
//   int i = 0, j; 
//   bool didSwap = true; 
//   T temp; 
//   while (i < arr.length - 1 && didSwap) { 
//     didSwap = false; 
//     for (j = 0; j < arr.length - i - 1; j++) { 
//       if (arr[j].compareTo(arr[j + 1]) > 0) { 
//         temp = arr[j + 1]; 
//         arr[j + 1] = arr[j]; 
//         arr[j] = temp; 
//         didSwap = true; 
//       } 
//     } 
//     i++; 
//   } 
// } 
 
// void display<T>(List<T> data) { 
//   for (T objek in data) { 
//     print('$objek '); 
//   } 
//   print(''); 
// } 
 
// void main() { 
//   List<num> data = List<num>.generate(10, (index)=>(index + 1) * 2); 
//   data.shuffle(); 
//   print('Data Sebelum Pengurutan:'); 
//   display(data); 
 
//   DateTime start = DateTime.now(); 
//   bubbleSortFlag(data); 
//   Duration elapsedTime = DateTime.now().difference(start); 
//   print('Data Setelah Pengurutan:'); 
//   display(data); 
//   print('Waktu: ${elapsedTime.inMilliseconds} ms'); 
// }
 
 	import 'dart:io';
	
	void insertionSort<T extends Comparable<T>>(List<T> arr)
{
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
	void insertionSortDescending<T extends Comparable<T>>(List<T> arr) {
	for (int i = arr.length - 1; i >= 0; i--) {
	for (int j = i + 1, k = i; j < arr.length; j++) {
		if (arr[j].compareTo(arr[k]) < 0) { // Mengubah kondisi untuk sorting descending
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
  stdout.write(data);

  // Sorting Ascending
  List<num> ascendingData = List.from(data);
  DateTime startAsc = DateTime.now();
  insertionSort<num>(ascendingData);
  Duration elapsedTimeAsc = DateTime.now().difference(startAsc);

  stdout.write('Data Setelah Pengurutan (Ascending):');
  stdout.write(ascendingData);
  print('Waktu: $elapsedTimeAsc');

  // Sorting Descending
  List<num> descendingData = List.from(data);
  DateTime startDesc = DateTime.now();
  insertionSortDescending<num>(descendingData);
  Duration elapsedTimeDesc = DateTime.now().difference(startDesc);

  stdout.write('Data Setelah Pengurutan (Descending):');
  stdout.write(descendingData);
  print('Waktu: $elapsedTimeDesc');
}
