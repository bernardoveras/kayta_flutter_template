/// A utility with extensions for integers.
extension IntExtension on int {
  /// An extension converting int to Duration in milliseconds.
  Duration get milliseconds => Duration(milliseconds: this);

  /// An extension converting int to Duration in microseconds.
  Duration get microseconds => Duration(microseconds: this);

  /// An extension converting int to Duration in seconds.
  Duration get seconds => Duration(seconds: this);
}
