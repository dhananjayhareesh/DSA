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

  void prepend(int data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
    } else {
      newNode.next = head;
      head = newNode;
    }
  }

  void tailDelete() {
    if (head == null) {
      print('empty');
      return;
    }
    Node? temp = head;
    Node? prev;

    while (temp?.next != null) {
      prev = temp;
      temp = temp?.next;
    }
    prev?.next = null;
    prev = tail;
  }

  void display() {
    if (head == null) {
      print('empty list');
      return;
    }
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}
