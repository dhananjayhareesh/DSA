void main() {
  //sum of factorial
  int recf(n) {
    if (n == 0) {
      return 1;
    }
    return n * recf(n - 1);
  }

  print(recf(5));
//sum of natural num
  int? sumofp(n) {
    if (n == 1) {
      return 1;
    }
    return n + sumofp(n - 1);
  }

  print(sumofp(5));

  //fibanocci

  recfib(int n, {int a = 0, int b = 1}) {
    if (n < 0) {
      return;
    }
    print(a);
    return recfib(n - 1, a: b, b: a + b);
  }

  print(recfib(5));
}
