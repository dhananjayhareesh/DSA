class Node {
  late dynamic key;
  late dynamic value;
  Node? next;

  Node(dynamic key, dynamic value) {
    this.key = key;
    this.value = value;
    this.next = null;
  }
}

class HashTable {
  late List<Node?> table;
  late int size;

  HashTable(int size) {
    this.table = List<Node?>.filled(size, null);
    this.size = size;
  }

  int hash(dynamic key) {
    return key.toString().length % size;
  }

  void set(dynamic key, dynamic value) {
    final index = hash(key);
    if (table[index] != null) {
      var curr = table[index];

      while (curr!.next != null) {
        if (curr.key == key) {
          curr.value = value;
          return;
        }
        curr = curr.next!;
      }

      if (curr.key == key) {
        curr.value = value;
      } else {
        curr.next = Node(key, value);
      }
    } else {
      table[index] = Node(key, value);
    }
  }

  dynamic get(dynamic key) {
    final index = hash(key);
    var curr = table[index];

    while (curr != null) {
      if (curr.key == key) {
        return curr.value;
      }
      curr = curr.next;
    }

    return null;
  }

  dynamic remove(dynamic key) {
    final index = hash(key);
    var curr = table[index];
    Node? prev = null;

    while (curr != null) {
      if (curr.key == key) {
        if (prev == null) {
          table[index] = curr.next;
        } else {
          prev.next = curr.next;
        }
        return curr.value;
      }
      prev = curr;
      curr = curr.next;
    }

    return null;
  }

  void display() {
    for (var i = 0; i < table.length; i++) {
      if (table[i] != null) {
        print('$i ${table[i]}');
      }
    }
  }
}

void main() {
  final table = HashTable(50);

  table.set("name", "aswin");
  table.set("age", 150);
  table.set("naem", "niwsa");

  table.display();

  print(table.get("name"));
}
