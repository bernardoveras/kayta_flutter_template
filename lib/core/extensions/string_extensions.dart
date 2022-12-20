extension StringExtensions on String? {
  bool isNullOrEmpty() {
    if (this == null) return true;

    final String value = this!.removeWhitespace() as String;

    return value.isEmpty;
  }

  String? removeWhitespace() {
    if (this == null) return null;

    return this!.replaceAll(' ', '');
  }

  bool isOnlyNumber() {
    if (isNullOrEmpty()) return false;

    final RegExp regex = RegExp(r'^-?[0-9]+$');

    return regex.hasMatch(this!);
  }
}
