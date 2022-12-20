import 'package:flutter/material.dart';

/// A utility class that holds all the icon sizes used throughout
/// the entire app.
///
/// This class has no constructor and all variables are `static`.
class IconSizes {
  const IconSizes._();

  static const double sm19 = 19;
  static const double med22 = 22;
  static const double lg27 = 27;
}

/// A utility class that holds all the gaps and insets used
/// throughout the entire app by things such as padding, sizedbox etc.
///
/// This class has no constructor and all variables are `static`.
@immutable
class Insets {
  const Insets._();

  /// [SizedBox] of height **2**.
  static const gapH2 = SizedBox(height: 2);

  /// [SizedBox] of width **2**.
  static const gapW2 = SizedBox(width: 2);

  /// [SizedBox] of height **4**.
  static const gapH4 = SizedBox(height: 4);

  /// [SizedBox] of width **4**.
  static const gapW4 = SizedBox(width: 4);

  /// [SizedBox] of height **8**.
  static const gapH8 = SizedBox(height: 8);

  /// [SizedBox] of width **8**.
  static const gapW8 = SizedBox(width: 8);

  /// [SizedBox] of height **12**.
  static const gapH12 = SizedBox(height: 12);

  /// [SizedBox] of width **12**.
  static const gapW12 = SizedBox(width: 12);

  /// [SizedBox] of height **16**.
  static const gapH16 = SizedBox(height: 16);

  /// [SizedBox] of width **16**.
  static const gapW16 = SizedBox(width: 16);

  /// [SizedBox] of height **24**.
  static const gapH24 = SizedBox(height: 24);

  /// [SizedBox] of width **24**.
  static const gapW24 = SizedBox(width: 24);

  /// [SizedBox] of height **32**.
  static const gapH32 = SizedBox(height: 32);

  /// [SizedBox] of width **32**.
  static const gapW32 = SizedBox(width: 32);

  /// [SizedBox] of height **40**.
  static const gapH40 = SizedBox(height: 40);

  /// [SizedBox] of width **40**.
  static const gapW40 = SizedBox(width: 40);

  /// [SizedBox] of height **48**.
  static const gapH48 = SizedBox(height: 48);

  /// [SizedBox] of width **48**.
  static const gapW48 = SizedBox(width: 48);

  /// [SizedBox] of height **56**.
  static const gapH56 = SizedBox(height: 56);

  /// [SizedBox] of width **56**.
  static const gapW56 = SizedBox(width: 56);

  /// [SizedBox] of height **64**.
  static const gapH64 = SizedBox(height: 64);

  /// [SizedBox] of width **64**.
  static const gapW64 = SizedBox(width: 64);

  /// [Spacer] for adding infinite gaps, as much as the constraints
  /// allow.
  static const expand = Spacer();

  /// The value for bottom padding of buttons in the app.
  /// It is measured from the bottom of the screen, that is
  /// behind the android system navigation.
  /// Used to prevent overlapping of android navigation with the button.
  static const bottomInsets = SizedBox(height: 38);

  /// The value for a smaller bottom padding of buttons in the app.
  /// It is measured from the bottom of the screen, that is
  /// behind the android system navigation.
  /// Used to prevent overlapping of android navigation with the button.
  static const bottomInsetsLow = SizedBox(height: 20);
}

/// A utility class that holds all the border radiuses used throughout
/// the entire app by things such as container, card etc.
///
/// This class has no constructor and all variables are `static`.
@immutable
class Corners {
  const Corners._();

  /// [BorderRadius] rounded on all corners by **4**
  static const BorderRadius rounded4 = BorderRadius.all(Radius.circular(4));

  /// [BorderRadius] rounded on all corners by **8**
  static const BorderRadius rounded8 = BorderRadius.all(Radius.circular(8));

  /// [BorderRadius] rounded on all corners by **16**
  static const BorderRadius rounded16 = BorderRadius.all(Radius.circular(16));

  /// [BorderRadius] rounded on all corners by **24**
  static const BorderRadius rounded24 = BorderRadius.all(Radius.circular(24));

  /// [BorderRadius] rounded on all corners by **50**
  static const BorderRadius rounded50 = BorderRadius.all(Radius.circular(50));
}
