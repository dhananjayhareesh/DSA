//mergeSort

List<int> mergeSort(List<int> arr) {
  if (arr.length <= 1) {
    return arr;
  }

  int middle = arr.length ~/ 2;
  List<int> left = arr.sublist(0, middle);
  List<int> right = arr.sublist(middle);

  return merge(mergeSort(left), mergeSort(right));
}

List<int> merge(List<int> left, List<int> right) {
  List<int> result = [];
  int leftIndex = 0;
  int rightIndex = 0;

  while (leftIndex < left.length && rightIndex < right.length) {
    if (left[leftIndex] < right[rightIndex]) {
      result.add(left[leftIndex]);
      leftIndex++;
    } else {
      result.add(right[rightIndex]);
      rightIndex++;
    }
  }

  result.addAll(left.sublist(leftIndex));
  result.addAll(right.sublist(rightIndex));

  return result;
}

void main() {
  List<int> unsortedList = [4, 2, 7, 1, 9, 5, 3];
  print("Unsorted List: $unsortedList");

  List<int> sortedList = mergeSort(unsortedList);
  print("Sorted List: $sortedList");
}
