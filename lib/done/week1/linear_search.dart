// int linearSearch(List<int> list, int target) {
//   for (int i = 0; i < list.length; i++) {
//     if (list[i] == target) {
//       return i; // Target found, return its index
//     }
//   }
//   return -1; // Target not found in the list
// }

// void main() {
//   List<int> numbers = [5, 2, 8, 12, 3, 7, 10];
//   int targetValue = 7;

//   int result = linearSearch(numbers, targetValue);

//   if (result != -1) {
//     print('Target value $targetValue found at index $result.');
//   } else {
//     print('Target value $targetValue not found in the list.');
//   }
// }
//------------------------------------------------------------------
// int linearSearchString(List<String> list, String target) {
//   for (int i = 0; i < list.length; i++) {
//     if (list[i] == target) {
//       return i; // Target found, return its index
//     }
//   }
//   return -1; // Target not found in the list
// }

// void main() {
//   List<String> names = ['Alice', 'Bob', 'Charlie', 'David', 'Eve'];
//   String targetName = 'Charlie';

//   int result = linearSearchString(names, targetName);

//   if (result != -1) {
//     print('Target name $targetName found at index $result.');
//   } else {
//     print('Target name $targetName not found in the list.');
//   }
// }

//-------------------------------------
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

int linearSearchCustomObject(List<Person> list, String targetName) {
  for (int i = 0; i < list.length; i++) {
    if (list[i].name == targetName) {
      return i; // Target found, return its index
    }
  }
  return -1; // Target not found in the list
}

void main() {
  List<Person> people = [
    Person('Alice', 25),
    Person('Bob', 30),
    Person('Charlie', 22),
    Person('David', 28),
    Person('Eve', 35),
  ];

  String targetPerson = 'Charlie';

  int result = linearSearchCustomObject(people, targetPerson);

  if (result != -1) {
    print('Target person $targetPerson found at index $result.');
  } else {
    print('Target person $targetPerson not found in the list.');
  }
}
