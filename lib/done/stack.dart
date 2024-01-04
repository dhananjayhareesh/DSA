class Node {
  int? data;
  Node? next;

  Node(int this.data);
}

class Stack {
  Node? top;

  void push(int data) {
    Node newNode = Node(data);

    if (top == null) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
  }

  void pop() {
    if (top == null) {
      print('Stack overflow');
      return;
    }
    top = top?.next;
  }

  void display() {
    Node? current = top;

    while (current != null) {
      print('${current.data} ');
      current = current.next;
    }
  }
}
