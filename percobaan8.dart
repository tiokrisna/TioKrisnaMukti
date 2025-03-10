int fibAux(int n, int next, int result) {
  if (n == 0) {
    return result;
  }
  return fibAux(n - 1, next + result, next);
}

int fib(int n) {
  return fibAux(n, 1, 0);
}

void main() {
  int result = fib(10);
  print('Deret Fibonacci: $result');
}
