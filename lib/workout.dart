class TrieNode {
  Map<String, TrieNode> children = {};
  bool isEndOfWord = false;
}

class Trie {
  TrieNode root = TrieNode();

  void insert(String word) {
    TrieNode current = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      current.children.putIfAbsent(char, () => TrieNode());
      current = current.children[char]!;
    }
    current.isEndOfWord = true;
  }

  bool search(String word) {
    TrieNode node = root;
    for (String char in word.split('')) {
      if (!node.children.containsKey(char)) {
        return false;
      }
      node = node.children[char]!;
    }
    return node.isEndOfWord;
  }
}
