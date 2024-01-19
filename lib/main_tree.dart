class Node {
  int data;
  Node? left, right;
  Node(int this.data);
}

class BST {
  Node? root;

  add(int data) {
    Node newNode = Node(data);
    if (root == null) {
      print('root added');
      root = newNode;
    } else {
      Node? temp = root;
      while (temp != null) {
        if (temp.data == data) {
          print('same element present');
          return;
        } else {
          if (data > temp.data) {
            if (temp.right == null) {
              temp.right = newNode;
              print('New node added to right');
              return;
            } else {
              temp = temp.right;
            }
          } else {
            if (temp.left == null) {
              temp.left = newNode;
              print("new node added to left");
              return;
            } else {
              temp = temp.left;
            }
          }
        }
      }
    }
  }

  search(int data) {
    if (root == null) {
      print('root is null');
    } else {
      Node? temp = root;
      while (temp != null) {
        if (temp.data == data) {
          print('value found');
        } else {
          if (data > temp.data) {
            temp = temp.right;
          } else {
            temp = temp.right;
          }
        }
      }
      print('value not found');
    }
  }

  void inOrderTraversal(Node? node) {
    if (node != null) {
      inOrderTraversal(node.left);
      print(node.data);
      inOrderTraversal(node.right);
    }
  }

  bool isBST(Node? node, int? min, int? max) {
    if (node == null) {
      return true; // An empty tree is a BST
    }

    // Check if the current node's value is within the specified range
    if ((min != null && node.data <= min) ||
        (max != null && node.data >= max)) {
      return false;
    }

    // Recursively check the left and right subtrees with updated ranges
    return isBST(node.left, min, node.data) &&
        isBST(node.right, node.data, max);
  }

  void bstOrNot(Node? root) {
    if (isBST(root, null, null)) {
      print('The tree is a Binary Search Tree.');
    } else {
      print('The tree is not a Binary Search Tree.');
    }
  }

  delete(root, int value) {
    if (root == null) {
      print('root is null');
    } else {
      if (value < root.data) {
        root.left = delete(root.left, value);
      } else if (value > root.data) {
        root.right = delete(root.right, value);
      } else {
        if (root.left == null) {
          return root.right;
        } else if (root.right == null) {
          return root.left;
        }
        root.data = findMinNode(root.right).data;
        root.right = delete(root.right, root.data);
      }
    }
    return root;
  }

  findMinNode(root) {
    while (root.left != null) {
      root = root.left;
    }
    return root;
  }
}

void main() {
  BST bst = BST();

  bst.add(0);
  bst.add(2);
  bst.add(7);
  bst.add(44);
  bst.add(56);
  bst.add(1);
  bst.inOrderTraversal(bst.root);
  bst.bstOrNot(bst.root);
}
