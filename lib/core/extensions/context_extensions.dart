import 'package:flutter/material.dart';

/// A utility with extensions for build context.
extension BuildContextExtension on BuildContext {
  /// An extension to get height through BuildContext.
  double get screenHeight => MediaQuery.of(this).size.height;
  
  /// An extension to get width through BuildContext.
  double get screenWidth => MediaQuery.of(this).size.width;

  /// An extension to get theme through BuildContext.
  ThemeData get theme => Theme.of(this);
}
