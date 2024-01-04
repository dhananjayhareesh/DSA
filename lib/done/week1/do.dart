// int binarySearch(List<int> arr, int target) {
//   int low = 0;
//   int high = arr.length - 1;

//   while (low <= high) {
//     int mid = (low + high) ~/ 2;

//     if (arr[mid] == target) {
//       return mid;
//     } else if (arr[mid] < target) {
//       low = mid + 1;
//     } else {
//       high = mid - 1;
//     }
//   }
//   return -1;
// }

// //-----------------------------------------
// int recbin(List<int> arr, int target, int low, int high) {
//   if (low < high) {
//     int mid = (low + high) ~/ 2;

//     if (arr[mid] == target) {
//       return mid;
//     } else if (arr[mid] < target) {
//       return recbin(arr, target, mid + 1, high);
//     } else {
//       return recbin(arr, target, low, mid - 1);
//     }
//   }
//   return -1;
// }

// void main() {
//   List<int> sortedArray = [1, 2, 3, 4, 5, 6];
//   int target = 3;
//   int result = recbin(sortedArray, target, 0, sortedArray.length - 1);

//   if (result != -1) {
//     print("$target found at $result index");
//   }
// }
void main() {
  recifn(int n, {int a = 0, int b = 1}) {
    if (n < 0) {
      return 'end';
    }
    print(a);
    return recifn(n - 1, a: b, b: a + b);
  }

  print(recifn(6));
}
