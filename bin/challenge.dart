import 'dart:math';

void main() {
  challenge1();
}

/// Challenge 1: Random nothings
///
/// Write a function that randomly returns `1` or `null`. Assign
/// the return value of the function to an variable named `result` that
/// will never be `null`. Give `result` a default of `0` if the function
/// returns `null`.
void challenge1() {
  int? randomNothings() {
    final isTrue = Random().nextBool();
    return isTrue ? 1 : null;
  }

  int result = randomNothings() ?? 0;
  print(result);
}
