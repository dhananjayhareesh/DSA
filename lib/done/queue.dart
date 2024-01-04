class Node {
  int? data;
  Node? next;

  Node(int this.data);
}

class Queue {
  Node? front;
  Node? rear;

  void display() {
    Node? current = front;

    if (front == null) {
      print('List is empty');
      return;
    }
    while (current != null) {
      print(current.next);
      current = current.next;
    }
  }
}
