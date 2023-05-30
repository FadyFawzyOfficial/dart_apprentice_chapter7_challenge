import 'dart:math';

void main() {
  challenge1();
  challenge2();
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

/// Challenge 2: Naming customs
///
/// People around the world have different customs for giving names to
/// children. It would be difficult to create a data class to accurately
/// represent them all, but try it like this:
///
/// - Create a class called `Name` with `givenName` and `surname` properties.
/// - Some people write the surname last and some write it first. Add a
///   Boolean property called `surnameIsFirst` to keep track of this.
/// - Not everyone in the world has a surname.
/// - Add a `toString` method that prints the full name.
void challenge2() {
  final fady = Name(givenName: 'Fady', surname: 'Fawzy');
  final phillip = Name(
    givenName: 'Phillip',
    surname: 'Fawzy',
    surnameIsFirst: true,
  );
  final peter = Name(givenName: 'Peter');

  print(fady);
  print(phillip);
  print(peter);
}

class Name {
  final String givenName;
  final String? surname;
  final bool surnameIsFirst;

  Name({
    required this.givenName,
    this.surname,
    this.surnameIsFirst = false,
  });

  @override
  String toString() => surname == null
      ? givenName
      : surnameIsFirst
          ? '$surname $givenName'
          : '$givenName $surname';
}
