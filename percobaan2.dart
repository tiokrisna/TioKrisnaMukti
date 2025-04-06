int linearSearch(List<int> arr, int size, int key) { 
if (size == 0) { 
return -1; 
} else if (arr[size - 1] == key) { 
return size - 1; 
} else { 
return linearSearch(arr, size - 1, key); 
} 
} 
void main() { 
List<int> arr = [2, 3, 4, 10, 40]; 
int key = 10; 
int result = linearSearch(arr, arr.length, key); 
if (result == -1) { 
print("Elemen tidak ada dalam array");
    } else { 
print("Elemen ditemukan pada indeks ke : ${result}"); 
  } 
} 