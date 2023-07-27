import 'dart:math';

class NonRepeatingRandom {
  final int min;
  final int max;
  final Random _random = Random();
  List<int> _generatedNumbers = [];

  NonRepeatingRandom(this.min, this.max);

  int next() {
    if (_generatedNumbers.isEmpty) {
      _generatedNumbers = List<int>.generate(max - min + 1, (index) => min + index);
      _shuffleGeneratedNumbers();
    }

    return _generatedNumbers.removeAt(0);
  }

  void _shuffleGeneratedNumbers() {
    for (int i = _generatedNumbers.length - 1; i > 0; i--) {
      final j = _random.nextInt(i + 1);
      final temp = _generatedNumbers[i];
      _generatedNumbers[i] = _generatedNumbers[j];
      _generatedNumbers[j] = temp;
    }
  }
}