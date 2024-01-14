//bubble

void bubbleSort(List<int> arr) {
  int n = arr.length;

  for (int i = 0; i < n - 1; i++) {
    for (int j = i + 1; j < n; j++) {
      if (arr[i] > arr[j]) {
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
  }
}

void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 11, 90];

  print("Original List: $numbers");

  bubbleSort(numbers);

  print("Sorted List: $numbers");
}
