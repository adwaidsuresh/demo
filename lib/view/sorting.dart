void main() {
  List<int> a = [2, 4, 7, 3, 1, 6, 5];
  List<int> sortedNumbers = sortAscending(a);

  print('Sorted Numbers: $sortedNumbers');
}

List<int> sortAscending(List<int> b) {
  for (int i = 0; i < b.length - 1; i++) {
    for (int j = i + 1; j < b.length; j++) {
      if (b[i] > b[j]) {
        int temp = b[i];
        b[i] = b[j];
        b[j] = temp;
      }
    }
  }

  return b;
}
