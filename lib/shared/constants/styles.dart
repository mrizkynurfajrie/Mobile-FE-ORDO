import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_fe_ordo/shared/constants/colors.dart';

Widget verticalSpace(double v) {
  return SizedBox(height: v);
}

Widget horizontalSpace(double v) {
  return SizedBox(width: v);
}

class Sizes {
  static double get xs => 8.w;
  static double get sm => 12.w;
  static double get smmed => 16.w;
  static double get med => 20.w;
  static double get lg => 32.w;
  static double get xl => 48.w;
  static double get xxl => 80.w;
}

class IconSizes {
  static double get genderIcon => 10.w;
  static double get xs => 12.w;
  static double get sm => 16.w;
  static double get arrowDown => 20.w;
  static double get add => 18.w;
  static double get med => 24.w;
  static double get medx => 28.w;
  static double get adm => 31.w;
  static double get lg => 32.w;
  static double get listuser => 38.w;
  static double get menu => 40.w;
  static double get xl => 48.w;
  static double get xxl => 60.w;
  static double get profPictSet => 64.w;
  static double get profPict => 48.w;
  static double get xxxl => 96.w;
  static double get popup => 173.w;
}

class Insets {
  static double get arrow => 17.w;
  static double offsetScale = 1;
  static double get xs => 4.w;
  static double get sm => 10.w;
  static double get med => 14.w;
  static double get lg => 16.w;
  static double get xl => 20.w;
  static double get icMenu => 24.w;
  static double get xxl => 32.w;
  // Offset, used for the edge of the window, or to separate large sections in the app
  static double get offset => 40 * offsetScale;
}

class Corners {
  static double sm = 3.w;
  static BorderRadius smBorder = BorderRadius.all(smRadius);
  static Radius smRadius = Radius.circular(sm);

  static double med = 5.w;
  static BorderRadius medBorder = BorderRadius.all(medRadius);
  static Radius medRadius = Radius.circular(med);

  static double lg = 8.w;
  static BorderRadius lgBorder = BorderRadius.all(lgRadius);
  static Radius lgRadius = Radius.circular(lg);

  static double lgOrderHistory = 12.w;
  static BorderRadius lgOrderHistoryBorder =
      BorderRadius.all(lgOrderHistoryRadius);
  static Radius lgOrderHistoryRadius = Radius.circular(lgOrderHistory);

  static double xl = 16.w;
  static BorderRadius xlBorder = BorderRadius.all(xlRadius);
  static Radius xlRadius = Radius.circular(xl);

  static double xxl = 24.w;
  static BorderRadius xxlBorder = BorderRadius.all(xxlRadius);
  static Radius xxlRadius = Radius.circular(xxl);
}

class Strokes {
  static const double xthin = 0.7;
  static const double thin = 1;
  static const double med = 2;
  static const double thick = 4;
}

class Shadows {
  // BOTTOM
  static List<BoxShadow> get xsBottom => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.05),
          offset: const Offset(0, 1),
          blurRadius: 2,
        )
      ];
  static List<BoxShadow> get smBottom => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.1),
          offset: const Offset(0, 1),
          blurRadius: 3,
        ),
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.06),
          offset: const Offset(0, 1),
          blurRadius: 2,
        ),
      ];
  static List<BoxShadow> get mdBottom => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.1),
          offset: const Offset(0, 4),
          blurRadius: 8,
          spreadRadius: -0.2,
        ),
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.06),
          offset: const Offset(0, 2),
          blurRadius: 4,
          spreadRadius: -0.2,
        ),
      ];
  static List<BoxShadow> get lgBottom => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.08),
          offset: const Offset(0, 12),
          blurRadius: 16,
          spreadRadius: -0.4,
        ),
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.03),
          offset: const Offset(0, 4),
          blurRadius: 6,
          spreadRadius: -0.2,
        ),
      ];
  static List<BoxShadow> get xlBottom => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.08),
          offset: const Offset(0, 20),
          blurRadius: 24,
          spreadRadius: -0.4,
        ),
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.03),
          offset: const Offset(0, 8),
          blurRadius: 8,
          spreadRadius: -0.4,
        ),
      ];
  static List<BoxShadow> get xl2Bottom => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.18),
          offset: const Offset(0, 24),
          blurRadius: 28,
          spreadRadius: -12,
        ),
      ];
  static List<BoxShadow> get xl3Bottom => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.14),
          offset: const Offset(0, 32),
          blurRadius: 64,
          spreadRadius: -12,
        ),
      ];
  // TOP
  static List<BoxShadow> get xsTop => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.05),
          offset: const Offset(0, -1),
          blurRadius: 2,
        )
      ];
  static List<BoxShadow> get smTop => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.1),
          offset: const Offset(0, -1),
          blurRadius: 3,
        ),
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.06),
          offset: const Offset(0, 1),
          blurRadius: 2,
        ),
      ];
  static List<BoxShadow> get mdTop => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.1),
          offset: const Offset(0, 4),
          blurRadius: 8,
          spreadRadius: -0.2,
        ),
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.06),
          offset: const Offset(0, -0.2),
          blurRadius: 4,
          spreadRadius: -0.2,
        ),
      ];
  static List<BoxShadow> get lgTop => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.08),
          offset: const Offset(0, -12),
          blurRadius: 16,
          spreadRadius: -0.4,
        ),
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.03),
          offset: const Offset(0, -0.4),
          blurRadius: 6,
          spreadRadius: -0.2,
        ),
      ];
  static List<BoxShadow> get xlTop => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.08),
          offset: const Offset(0, -0.20),
          blurRadius: 24,
          spreadRadius: -0.4,
        ),
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.03),
          offset: const Offset(0, -8),
          blurRadius: 8,
          spreadRadius: -0.4,
        ),
      ];
  static List<BoxShadow> get xl2Top => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.18),
          offset: const Offset(0, -0.24),
          blurRadius: 28,
          spreadRadius: -12,
        ),
      ];
  static List<BoxShadow> get xl3Top => [
        BoxShadow(
          color: const Color(0xFF101828).withOpacity(0.14),
          offset: const Offset(0, -0.32),
          blurRadius: 64,
          spreadRadius: -12,
        ),
      ];
  static List<BoxShadow> get none => [
        const BoxShadow(
            color: AppColor.white,
            spreadRadius: 0,
            blurRadius: 0,
            offset: Offset(0, 0)),
      ];

  static List<BoxShadow> get universal => [
        BoxShadow(
            color: const Color(0xff333333).withOpacity(.13),
            spreadRadius: 0,
            blurRadius: 5,
            offset: const Offset(0, 5)),
      ];
  static List<BoxShadow> get small => [
        BoxShadow(
            color: const Color(0xff333333).withOpacity(.15),
            spreadRadius: 0,
            blurRadius: 3,
            offset: const Offset(0, 1)),
      ];

  static List<BoxShadow> get menu => [
        BoxShadow(
            color: const Color(0xFF000000).withOpacity(.15),
            spreadRadius: 0,
            blurRadius: 8,
            offset: const Offset(0, 4)),
      ];
  static List<BoxShadow> get shadowsUp => [
        BoxShadow(
            color: const Color(0xff333333).withOpacity(.15),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(-1, 0)),
      ];
}

/// Font Sizes
/// You can use these directly if you need, but usually there should be a predefined style in TextStyles.
class FontSizes {
  /// Provides the ability to nudge the app-wide font scale in either direction
  static double get s4 => 4;
  static double get s6 => 6;
  static double get s8 => 8;
  static double get s9 => 9;
  static double get s10 => 10;
  static double get s11 => 11;
  static double get s12 => 12;
  static double get s13 => 13;
  static double get s14 => 14;
  static double get s15 => 15;
  static double get s16 => 16;
  static double get s17 => 17;
  static double get s18 => 18;
  static double get s19 => 19;
  static double get s20 => 20;
  static double get s22 => 22;
  static double get s24 => 24;
  static double get s26 => 26;
  static double get s27 => 27;
  static double get s28 => 28;
  static double get s30 => 30;
  static double get s32 => 32;
  static double get s36 => 36;
  static double get s40 => 40;
  static double get s48 => 48;
  static double get s56 => 56;
  static double get s60 => 60;
  static double get s72 => 72;
}

/// Fonts - A list of Font Families, this is uses by the TextStyles class to create concrete styles.

/// TextStyles - All the core text styles for the app should be declared here.
/// Don't try and create every variant in existence here, just the high level ones.
/// More specific variants can be created on the fly using `style.copyWith()`
/// `newStyle = TextStyles.body1.copyWith(lineHeight: 2, color: Colors.red)`
class TextStyles {
  /// Declare a base style for each Family
  static const TextStyle poppins = TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins',
    color: AppColor.white,
  );

  static TextStyle get textExtraSmall => poppins.copyWith(
        fontSize: FontSizes.s9,
        letterSpacing: -0.4,
      );

  static TextStyle get textExtraSmallMedium => textExtraSmall.copyWith(
        fontWeight: FontWeight.w500,
      );

  static TextStyle get textVerySmallRegular => poppins.copyWith(
        fontSize: FontSizes.s10,
        letterSpacing: -0.2,
      );

  static TextStyle get textVerySmallMedium => textVerySmallRegular.copyWith(
        fontWeight: FontWeight.w500,
      );

  static TextStyle get textSmallRegular => poppins.copyWith(
        fontSize: FontSizes.s11,
        letterSpacing: -0.4,
      );

  static TextStyle get textSmallMedium => textSmallRegular.copyWith(
        fontWeight: FontWeight.w500,
      );

  static TextStyle get textSmallSemiBold => textSmallRegular.copyWith(
        fontWeight: FontWeight.w600,
      );

  static TextStyle get textRegular => poppins.copyWith(
        fontSize: FontSizes.s12,
        letterSpacing: -0.4,
      );

  static TextStyle get textMedium => textRegular.copyWith(
        fontWeight: FontWeight.w500,
      );

  static TextStyle get textSemiBold => textRegular.copyWith(
        fontWeight: FontWeight.w600,
      );

  static TextStyle get textMediumRegular => poppins.copyWith(
        fontSize: FontSizes.s13,
        letterSpacing: -0.3,
      );

  static TextStyle get textMediumMedium => textMediumRegular.copyWith(
        fontWeight: FontWeight.w500,
      );

  static TextStyle get textMediumSemiBold => textMediumRegular.copyWith(
        fontWeight: FontWeight.w600,
      );

  static TextStyle get textBigRegular => poppins.copyWith(
        fontSize: FontSizes.s15,
        letterSpacing: -0.3,
      );

  static TextStyle get textBigMedium => textBigRegular.copyWith(
        fontWeight: FontWeight.w500,
      );

  static TextStyle get textBigSemiBold => textBigRegular.copyWith(
        fontWeight: FontWeight.w600,
      );

  static TextStyle get textLargeRegular => poppins.copyWith(
        fontSize: FontSizes.s16,
        letterSpacing: -0.3,
      );

  static TextStyle get textLargeMedium => textLargeRegular.copyWith(
        fontWeight: FontWeight.w500,
      );

  static TextStyle get textLargeSemiBold => textLargeRegular.copyWith(
        fontWeight: FontWeight.w600,
      );

  static TextStyle get headingRegular => poppins.copyWith(
        fontSize: FontSizes.s20,
        letterSpacing: -0.3,
      );

  static TextStyle get headingMedium => headingRegular.copyWith(
        fontWeight: FontWeight.w500,
      );

  static TextStyle get headingSemiBold => headingRegular.copyWith(
        fontWeight: FontWeight.w600,
      );
}

ThemeData appTheme(hexColor) {
  return ThemeData(
    platform: TargetPlatform.android,
    brightness: Brightness.light,
    fontFamily: 'poppins',
  );
}
