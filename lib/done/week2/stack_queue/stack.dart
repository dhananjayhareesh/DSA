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
    dynamic poppedEle = top?.data;
    top = top?.next;

    print('popped elemnt:$poppedEle');
  }

  void peek() {
    if (top == null) {
      print('empty');
      return;
    }
    print('element at top: ${top?.data}');
  }

  void display() {
    _displayRecursively(top);
  }

  void _displayRecursively(Node? current) {
    if (current == null) {
      return;
    }

    print(current.data);
    _displayRecursively(current.next);
  }
}

void main() {
  Stack st = Stack();
  st.push(3);
  st.push(4);
  st.push(7);
  st.pop();
  st.peek();
  st.display();
}
