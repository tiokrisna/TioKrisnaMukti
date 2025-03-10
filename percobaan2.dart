num fi(int n) {
  if (n <= 0 || n <= 1) {
    return n;
  } else {
    return fi(n - 2) + fi(n - 1);
  }
}

void main() {
  num n = 10;
  for (int i = 0; i < n; i++) {
    print("f$i = ${fi(i)}");
  }
}
