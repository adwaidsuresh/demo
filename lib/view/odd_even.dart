void main() {
  List<int> a = [2, 4, 7, 3, 1, 6, 5];
  printOddEven(a);
}

void printOddEven(List<int> numbers) {
  List<int> evenNumbers = [];
  List<int> oddNumbers = [];

  for (int number in numbers) {
    if (number.isEven) {
      evenNumbers.add(number);
    } else {
      oddNumbers.add(number);
    }
  }

  print('Even Numbers: $evenNumbers');
  print('Odd Numbers: $oddNumbers');
}