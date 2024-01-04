//bubble

// void bubbleSort(List<int> arr) {
//   int n = arr.length;

//   for (int i = 0; i < n - 1; i++) {
//     for (int j = i + 1; j < n; j++) {
//       if (arr[j] > arr[j + 1]) {
//         int temp = arr[j];
//         arr[j] = arr[j + 1];
//         arr[j + 1] = temp;
//       }
//     }
//   }
// }

// void main() {
//   List<int> numbers = [64, 34, 25, 12, 22, 11, 90];

//   print("Original List: $numbers");

//   bubbleSort(numbers);

//   print("Sorted List: $numbers");
// }
//------------------------------------------------------------------------------------------------

//insertion

// void insertionSort(List<int> arr) {
//   int n = arr.length;

//   for (int i = 1; i < n; i++) {
//     int key = arr[i];
//     int j = i - 1;

//     while (j >= 0 && arr[j] > key) {
//       arr[j + 1] = arr[j];
//       j = j - 1;
//     }
//     arr[j + 1] = key;
//   }
// }

// void main() {
//   List<int> numbers = [12, 11, 13, 5, 6];

//   print("Original List: $numbers");

//   insertionSort(numbers);

//   print("Sorted List: $numbers");
// }
//--------------------------------------------------------------------------------------------------------
//selection sort

// void selectionSort(List<int> list) {
//   int n = list.length;
//   for (int i = 0; i < n - 1; i++) {
//     int minIndex = i;
//     for (int j = i + 1; j < n; j++) {
//       if (list[j] < list[minIndex]) {
//         minIndex = j;
//       }
//     }
//     if (minIndex != i) {
//       int temp = list[i];
//       list[i] = list[minIndex];
//       list[minIndex] = temp;
//     }
//   }
// }

// void main() {
//   List<int> numbers = [22, 3, 5, 66, 73, 43];
//   selectionSort(numbers);
//   print(numbers);
// }
//--------------------------------------------------------------
//quick sort

// List<int> quickSort(List<int> arr) {
//   if (arr.length <= 1) {
//     return arr;
//   }

//   int pivot = arr[arr.length ~/ 2];
//   List<int> left = [];
//   List<int> right = [];
//   List<int> equal = [];

//   for (int num in arr) {
//     if (num < pivot) {
//       left.add(num);
//     } else if (num == pivot) {
//       equal.add(num);
//     } else {
//       right.add(num);
//     }
//   }

//   return [...quickSort(left), ...equal, ...quickSort(right)];
// }

// void main() {
//   List<int> unsortedList = [4, 2, 7, 1, 9, 5, 3];
//   print("Unsorted List: $unsortedList");

//   List<int> sortedList = quickSort(unsortedList);
//   print("Sorted List: $sortedList");
// }
//----------------------------------------------------
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
