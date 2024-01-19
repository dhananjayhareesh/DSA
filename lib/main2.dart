class MaxHeap {
  List<int> heap = [];

  void insert(List<int> arr) {
    for (int i = 0; i < arr.length; i++) {
      heap.add(arr[i]);
      heapifyUp();
    }
  }

  void heapifyUp() {
    int currentIdx = heap.length - 1;

    while (currentIdx > 0) {
      int parentIdx = (currentIdx - 1) ~/ 2;
      if (heap[currentIdx] > heap[parentIdx]) {
        swap(currentIdx, parentIdx);
        currentIdx = parentIdx;
      } else {
        break;
      }
    }
  }

  void swap(int currentIdx, int parentIdx) {
    int temp = heap[currentIdx];
    heap[currentIdx] = heap[parentIdx];
    heap[parentIdx] = temp;
  }
}

void main() {
  MaxHeap maxHeap = MaxHeap();
  maxHeap.insert([2, 4, 5, 6, 7]);
  print(maxHeap.heap);
}
