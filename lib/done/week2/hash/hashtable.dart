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
      print('empty');
    } else {
      Node? currentNode = table?[index];
      while (currentNode != null) {
        if (currentNode.key == key) {
          print('Value for key $key at index $index: ${currentNode.data}');
          return;
        }
        currentNode = currentNode.next;
      }
      print('Key $key not found at index $index');
    }
  }

  getAll(table) {
    for (int i = 0; i < table.length; i++) {
      print('At index $i:');
      Node? currentNode = table?[i];
      while (currentNode != null) {
        print('${currentNode.data}');
        currentNode = currentNode.next;
      }
      if (table[i] == null) {
        print('No value found');
      }
    }
  }
}

void main() {
  HashTable hash = HashTable(5);
  hash.add('dhan', 21);
  hash.add('prrr', 32);
  hash.add('dfsdsss', 75);
  hash.add('rwea', 22);
  hash.add('extra', 42);
  hash.get('prrr');
  hash.get('dfsdsss');
  hash.get('rwea');
  hash.get('dhan');
}
