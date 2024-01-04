//selection sort

void selectionSort(List<int> list) {
  int n = list.length;
  for (int i = 0; i < n - 1; i++) {
    int minIndex = i;
    for (int j = i + 1; j < n; j++) {
      if (list[j] < list[minIndex]) {
        minIndex = j;
      }
    }
    if (minIndex != i) {
      int temp = list[i];
      list[i] = list[minIndex];
      list[minIndex] = temp;
    }
  }
}

void main() {
  List<int> numbers = [22, 3, 5, 66, 73, 43];
  selectionSort(numbers);
  print(numbers);
}
