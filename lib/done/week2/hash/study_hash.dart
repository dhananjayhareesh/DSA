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

  get(String key) {
    int index = key.hashCode % size;
    if (table?[index] == null) {
      print('$key not found');
    } else {
      Node? currentNode = table?[index];
      while (currentNode != null) {
        if (currentNode.key == key) {
          print('the value of $key found at $index: ${currentNode.data}');
          return;
        }
        currentNode = currentNode.next;
      }
    }
  }

  getAll(table) {
    for (int i = 0; i < table.length; i++) {
      print('at index $i');
      Node? currentNode = table?[i];
      while (currentNode != null) {
        print('${currentNode.data}');
        currentNode = currentNode.next;
      }
      if (table[i] == null) {
        print('no data found');
      }
    }
  }
}

void main() {
  HashTable hash = HashTable(5);
  hash.add('dhan', 22);
  hash.add('nahd', 78);
  hash.add('jkgrum', 56);
  hash.get('dhan');
  hash.get('fds');
  hash.getAll(hash.table);
}
