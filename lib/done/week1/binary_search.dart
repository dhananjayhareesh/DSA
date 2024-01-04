// Binary search function
int binarySearch(List<int> arr, int target) {
  int low = 0;
  int high = arr.length - 1;

  while (low <= high) {
    int mid = (low + high) ~/ 2; // Calculate the middle index

    if (arr[mid] == target) {
      return mid; // Element found, return its index
    } else if (arr[mid] < target) {
      low = mid + 1; // Search in the right half
    } else {
      high = mid - 1; // Search in the left half
    }
  }

  return -1; // Element not found
}

void main() {
  // Sorted array
  List<int> sortedArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Element to search for
  int targetElement = 7;

  // Perform binary search
  int result = binarySearch(sortedArray, targetElement);

  // Display the result
  if (result != -1) {
    print("Element $targetElement found at index $result.");
  } else {
    print("Element $targetElement not found in the array.");
  }
}
// ---------------------------------------------------------------------------------

// Recursive binary search function
// int binarySearchRecursive(List<int> arr, int target, int low, int high) {
//   if (low <= high) {
//     int mid = (low + high) ~/ 2; // Calculate the middle index

//     if (arr[mid] == target) {
//       return mid; // Element found, return its index
//     } else if (arr[mid] < target) {
//       return binarySearchRecursive(
//           arr, target, mid + 1, high); // Search in the right half
//     } else {
//       return binarySearchRecursive(
//           arr, target, low, mid - 1); // Search in the left half
//     }
//   }

//   return -1; // Element not found
// }

// void main() {
//   // Sorted array
//   List<int> sortedArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

//   // Element to search for
//   int targetElement = 5;

//   // Perform recursive binary search
//   int result = binarySearchRecursive(
//       sortedArray, targetElement, 0, sortedArray.length - 1);

//   // Display the result
//   if (result != -1) {
//     print("Element $targetElement found at index $result.");
//   } else {
//     print("Element $targetElement not found in the array.");
//   }
// }
//------------------------------------------------------------------------------------

