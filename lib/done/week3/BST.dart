class Node {
  int? data;
  Node? left, right;
  Node(int this.data);
}

class BinarySearchTree {
  Node? root;

  void insert(int data) {
    Node? currentNode = root;
    Node? newNode = Node(data);
    if (currentNode == null) {
      root = newNode;
      return;
    }
    while (true) {
      if (data < currentNode!.data!) {
        if (currentNode.left == null) {
          currentNode.left = newNode;
          break;
        } else {
          currentNode = currentNode.left;
        }
      } else if (data > currentNode.data!) {
        if (currentNode.right == null) {
          currentNode.right = newNode;
          break;
        } else {
          currentNode = currentNode.right;
        }
      } else {
        print("Data $data is already in the tree.");
        break;
      }
    }
  }

  bool contains(int data) {
    Node? currentNode = root;
    while (currentNode != null) {
      if (data < currentNode.data!) {
        currentNode = currentNode.left;
      } else if (data > currentNode.data!) {
        currentNode = currentNode.right;
      } else {
        return true;
      }
    }
    return false;
  }
}

void main() {
  BinarySearchTree bst = BinarySearchTree();
  bst.insert(5);
  bst.insert(3);
  bst.insert(7);
  print(bst.contains(3));
  print(bst.contains(1));
}
