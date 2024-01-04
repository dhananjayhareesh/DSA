//insertion

void insertionSort(List<int> arr) {
  int n = arr.length;

  for (int i = 1; i < n; i++) {
    int key = arr[i];
    int j = i - 1;

    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j = j - 1;
    }
    arr[j + 1] = key;
  }
}

void main() {
  List<int> numbers = [12, 11, 13, 5, 6];

  print("Original List: $numbers");

  insertionSort(numbers);

  print("Sorted List: $numbers");
}
