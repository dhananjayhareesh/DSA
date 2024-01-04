//quick sort

List<int> quickSort(List<int> arr) {
  if (arr.length <= 1) {
    return arr;
  }

  int pivot = arr[arr.length ~/ 2];
  List<int> left = [];
  List<int> right = [];
  List<int> equal = [];

  for (int num in arr) {
    if (num < pivot) {
      left.add(num);
    } else if (num == pivot) {
      equal.add(num);
    } else {
      right.add(num);
    }
  }

  return [...quickSort(left), ...equal, ...quickSort(right)];
}

void main() {
  List<int> unsortedList = [4, 2, 7, 1, 9, 5, 3];
  print("Unsorted List: $unsortedList");

  List<int> sortedList = quickSort(unsortedList);
  print("Sorted List: $sortedList");
}
