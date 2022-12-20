/// A utility with extensions for strings.
extension StringExtensions on String? {
  /// An extension to validate String is empty or null.
  bool isNullOrEmpty() {
    if (this == null) return true;

    final String value = this!.removeWhitespace() as String;

    return value.isEmpty;
  }

  /// An extension to remove whitespace from a String.
  String? removeWhitespace() {
    if (this == null) return null;

    return this!.replaceAll(' ', '');
  }

  ///An extension to check if String contains only numbers.
  bool isOnlyNumber() {
    if (isNullOrEmpty()) return false;

    final RegExp regex = RegExp(r'^-?[0-9]+$');

    return regex.hasMatch(this!);
  }
}
