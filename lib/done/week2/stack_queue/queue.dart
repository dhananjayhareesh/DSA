class Node {
  int? data;
  Node? next;

  Node(int this.data);
}

class Queue {
  Node? front;
  Node? rear;

  enqueue(int data) {
    Node newNode = Node(data);
    if (rear == null) {
      front = rear = newNode;
      return;
    }
    rear?.next = newNode;
    rear = newNode;
  }

  dequeue() {
    if (front == null) {
      print('queue is empty');
    }
    dynamic deque = front?.data;
    front = front?.next;
    print('element removed $deque');
  }

  void display() {
    Node? current = front;

    if (front == null) {
      print('List is empty');
      return;
    }
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  Queue q = Queue();

  q.enqueue(3);
  q.enqueue(5);
  q.enqueue(4);
  q.enqueue(6);
  q.display();
  q.dequeue();
  q.display();
}
