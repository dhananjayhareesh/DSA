// String reverseString(String input) {
//   List<String> characters = input.split('');
//   characters = characters.reversed.toList();
//   return characters.join('');
// }

// void main() {
//   String originalString = "Hello, World!";
//   String reversedString = reverseString(originalString);

//   print('Original string: $originalString');
//   print('Reversed string: $reversedString');
// }

// String reverseStringWithLoop(String input) {
//   String reversedString = '';
//   for (int i = input.length - 1; i >= 0; i--) {
//     reversedString += input[i];
//   }
//   return reversedString;
// }

// void main() {
//   String originalString = "Hello, World!";
//   String reversedString = reverseStringWithLoop(originalString);

//   print('Original string: $originalString');
//   print('Reversed string: $reversedString');
// }

String reverseString(String input) {
  List<String> char = input.split('');
  char = char.reversed.toList();
  return char.join('');
}

void main() {
  String org = 'dhananjay';
  String reversed = reverseString(org);

  print(reversed);
}
