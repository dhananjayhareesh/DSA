class Node {
  int? data;
  Node? next;

  Node(int this.data);
}

class LinkedList {
  Node? head;
  Node? tail;

  void addNode(int data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
    }
    tail = newNode;
  }

  void removeDuplicates() {
    Node? current = head;

    while (current != null) {
      Node? next = current.next;
      while (next != null && next.data == current.data) {
        next = next.next;
      }
      current.next = next;

      if (next == tail && current.data == next!.data) {
        tail = current;
        tail!.next = null;
      }
      current = next;
    }
  }

  void display() {
    if (head == null) {
      print('empty');
      return;
    }

    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}
