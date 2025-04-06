void binarySearch(List<int> arr, int l, int r, int x) { 
while (r - l > 1) { 
int mid = (l + r) ~/ 2; 
if (arr[mid] < x) { 
l = mid + 1; 
} else { 
r = mid; 
} 
} 
if (arr[l] == x) { 
print("Found at index $l"); 
} else if (arr[r] == x) { 
print("Found at index $r"); 
} else { 
print("Not found"); 
} 
} 
void main() { 
List<int> arr = [2, 3, 4, 10, 40]; 
int x = 10; 
int size = arr.length; 
binarySearch(arr, 0, size - 1, x); 
}