class Node {
  String key;
  dynamic data;
  Node? next;
  Node(this.key, this.data);
}

class HashTable {
  List<Node?>? table;
  int size;
  HashTable(this.size) {
    table = List.generate(size, (index) => null);
  }

  add(String key, dynamic data) {
    int index = key.hashCode % size;
    Node newNode = Node(key, data);
    if (table?[index] == null) {
      table?[index] = newNode;
    } else {
      newNode.next = table?[index];
      table?[index] = newNode;
    }
  }

  getAll(table) {
    for (int i = 0; i < table.length; i++) {
      print('at index $i');
      Node? currentNode = table?[i];
      while (currentNode != null) {
        print(currentNode.data);
        currentNode = currentNode.next;
      }
      if (table[i] == null) {
        print('No element found');
      }
    }
  }
}

void main() {
  HashTable hash = HashTable(5);
  hash.add('name', 23);
  hash.add('jam', 55);
  hash.getAll(hash.table);
}
