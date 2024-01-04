//-----------------------------------------------------------------------------

class Node {
  int? data;
  Node? next;

  Node(int this.data);
}

class LinkedList {
  Node? head;
  Node? tail;

  //add a node

  void addNode(int data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
    }
    tail = newNode;
    print('Node added');
  }

  //delete a node
  void delete(int data) {
    Node? temp = head;
    Node? prev;
    if (temp != null && temp.data == data) {
      head = temp.next;
      return;
    }
    while (temp != null && temp.data != data) {
      prev = temp;
      temp = temp.next;
    }
    if (temp == null) {
      return;
    }
    if (temp == tail) {
      tail = prev;
      tail?.next = null;
      return;
    }
    prev?.next = temp.next;
  }

  //insert a NODE at middle
  void insrtAfter(int nextTo, int data) {
    Node newNode = Node(data);
    Node? temp = head;

    while (temp != null && temp.data != nextTo) {
      temp = temp.next;
    }

    if (temp == null) {
      print('no data found');
      return;
    }
    if (temp == tail) {
      tail?.next = newNode;
      tail = newNode;
      return;
    }
    newNode.next = temp.next;
    temp.next = newNode;
  }

  //delete tail-------------
  void deleteTail() {
    if (head == null) {
      print('List is empty. Cannot delete tail.');
      return;
    }

    if (head == tail) {
      // If there is only one node in the list, set both head and tail to null.
      head = null;
      tail = null;
      print('Tail deleted. List is now empty.');
      return;
    }

    // Traverse the list to find the node before the tail.
    Node? temp = head;
    Node? prev;

    while (temp?.next != null) {
      prev = temp;
      temp = temp?.next;
    }

    // Set the previous node as the new tail and disconnect the old tail.
    tail = prev;
    tail?.next = null;

    print('Tail deleted.');
  }

  void headDeleted() {
    if (head == null) {
      print('empty');
      return;
    }
    if (head?.next == null) {
      head = null;
    }

    head = head?.next;
  }

//linkedlist to array
  List<int?> toArray() {
    List<int?> myList = [];
    Node? temp = head;
    while (temp != null) {
      myList.add(temp.data);
      temp = temp.next;
    }
    return myList;
  }
  //inert after a index

  void insertAfterindex(int index, int data) {
    Node newNode = Node(data);
    Node? temp = head;
    int currentIndex = 0;
    while (temp != null && currentIndex < index) {
      temp = temp.next;
      currentIndex++;
    }
    if (temp == null) {
      print('no index found');
      return;
    }
    if (temp == tail) {
      tail?.next = newNode;
      tail = newNode;
    }
    newNode.next = temp.next;
    temp.next = newNode;
  }

  //insert at a index

  void insertAtIndex(int index, int data) {
    Node? newNode = Node(data);
    Node? temp = head;
    Node? prev;
    int currentIndex = 0;

    while (temp != null && currentIndex < index) {
      prev = temp;
      temp = temp.next;
      currentIndex++;

      if (temp == null) {
        print('no index found');
        return;
      }

      if (temp == tail) {
        prev.next = newNode;
        newNode.next = temp;
      }
      newNode.next = temp;
      prev.next = newNode;
    }
  }

  void removeDuplicates() {
    if (head == null) {
      print('Empty list. No duplicates to remove.');
      return;
    }

    var uniqueSet = Set<int?>();
    Node? temp = head;
    Node? prev;

    while (temp != null) {
      if (uniqueSet.contains(temp.data)) {
        // Duplicate found remove the node
        prev?.next = temp.next;
        if (temp == tail) {
          tail = prev;
        }
      } else {
        // Not a duplicate add to the set
        uniqueSet.add(temp.data);
        prev = temp;
      }

      temp = temp.next;
    }
  }

//print the list
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

//array to linked list
LinkedList arrayToLinkedList(List<int> array) {
  LinkedList linkedList = LinkedList();

  for (int element in array) {
    linkedList.addNode(element);
  }

  return linkedList;
}
