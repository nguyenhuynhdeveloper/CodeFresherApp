import './app_fonts.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyle {
  ///Black
  static const black =
      TextStyle(color: Colors.black, fontFamily: AppFonts.regular);

  //s12
  static final blackS12 = black.copyWith(fontSize: 12);
  static final blackS12W600 = blackS12.copyWith(fontWeight: FontWeight.w600);
  static final blackS12Bold = blackS12.copyWith(fontWeight: FontWeight.bold);
  static final blackS12W800 = blackS12.copyWith(fontWeight: FontWeight.w800);

  //s14
  static final blackS14 = black.copyWith(fontSize: 14);
  static final blackS14Bold = blackS14.copyWith(fontWeight: FontWeight.bold);
  static final blackS14W800 = blackS14.copyWith(fontWeight: FontWeight.w800);
  static final blackS14W600 = blackS14.copyWith(fontWeight: FontWeight.w600);

  static final blackS15 = black.copyWith(fontSize: 15);
  static final blackS15W500 = blackS15.copyWith(fontWeight: FontWeight.w500);
  static final blackS15Bold = blackS15.copyWith(fontWeight: FontWeight.bold);

  //s16
  static final blackS16 = black.copyWith(fontSize: 14);
  static final blackS16W600 = blackS16.copyWith(fontWeight: FontWeight.w600);
  static final blackS16Bold = blackS16.copyWith(fontWeight: FontWeight.bold);
  static final blackS16W800 = blackS16.copyWith(fontWeight: FontWeight.w800);

  //s18
  static final blackS18 = black.copyWith(fontSize: 18);
  static final blackS18Bold = blackS18.copyWith(fontWeight: FontWeight.bold);
  static final blackS18W800 = blackS18.copyWith(fontWeight: FontWeight.w800);

  //s20
  static final blackS20 = black.copyWith(fontSize: 20);
  static final blackS20Bold = blackS18.copyWith(fontWeight: FontWeight.bold);
  static final blackS20W600 = blackS18.copyWith(fontWeight: FontWeight.w600);
  static final blackS20W800 = blackS18.copyWith(fontWeight: FontWeight.w800);

  //s24
  static final blackS24 = black.copyWith(fontSize: 24);
  static final blackS24Bold = blackS24.copyWith(fontWeight: FontWeight.bold);
  static final blackS24W800 = blackS24.copyWith(fontWeight: FontWeight.w800);

  //s32
  static final blackS32 = black.copyWith(fontSize: 32);
  static final blackS32Bold = blackS32.copyWith(fontWeight: FontWeight.bold);
  static final blackS32W800 = blackS32.copyWith(fontWeight: FontWeight.w800);

  //s40
  static final blackS40 = black.copyWith(fontSize: 40);
  static final blackS40W600 = blackS40.copyWith(fontWeight: FontWeight.w600);
  static final blackS40Bold = blackS40.copyWith(fontWeight: FontWeight.bold);
  static final blackS40W800 = blackS40.copyWith(fontWeight: FontWeight.w800);

  ///White
  static const white =
      TextStyle(color: Colors.white, fontFamily: AppFonts.regular);

  //s12
  static final whiteS12 = white.copyWith(fontSize: 12);
  static final whiteS12Bold = whiteS12.copyWith(fontWeight: FontWeight.bold);
  static final whiteS12W800 = whiteS12.copyWith(fontWeight: FontWeight.w800);

  //s14
  static final whiteS14 = white.copyWith(fontSize: 14);
  static final whiteS14Bold = whiteS14.copyWith(fontWeight: FontWeight.bold);
  static final whiteS14W800 = whiteS14.copyWith(fontWeight: FontWeight.w800);

  static final whiteS15 = white.copyWith(fontSize: 15);
  static final whiteS15W500 = whiteS15.copyWith(fontWeight: FontWeight.w500);

  //s16
  static final whiteS16 = white.copyWith(fontSize: 16);
  static final whiteS16Bold = whiteS16.copyWith(fontWeight: FontWeight.bold);
  static final whiteS16W800 = whiteS16.copyWith(fontWeight: FontWeight.w800);
  static final whiteS16W400 = whiteS16.copyWith(fontWeight: FontWeight.w400);

  //s18
  static final whiteS18 = white.copyWith(fontSize: 18);
  static final whiteS18Bold = whiteS18.copyWith(fontWeight: FontWeight.bold);
  static final whiteS18W800 = whiteS18.copyWith(fontWeight: FontWeight.w800);

  //s18
  static final whiteS20 = white.copyWith(fontSize: 20);
  static final whiteS20W600 = whiteS20.copyWith(fontWeight: FontWeight.w600);

  ///Gray
  static const grey = TextStyle(color: Colors.grey);

  //s9
  static final greyS9 = grey.copyWith(fontSize: 9);
  static final greyS9W600 = greyS9.copyWith(fontWeight: FontWeight.w600);
  static final greyS9Bold = greyS9.copyWith(fontWeight: FontWeight.bold);
  static final greyS9W800 = greyS9.copyWith(fontWeight: FontWeight.w800);

  //s12
  static final greyS12 = grey.copyWith(fontSize: 12);
  static final greyS12W600 = greyS12.copyWith(fontWeight: FontWeight.w600);
  static final greyS12Bold = greyS12.copyWith(fontWeight: FontWeight.bold);
  static final greyS12W800 = greyS12.copyWith(fontWeight: FontWeight.w800);

  //s14
  static final greyS14 = grey.copyWith(fontSize: 14);
  static final greyS14Bold = greyS14.copyWith(fontWeight: FontWeight.bold);
  static final greyS14W800 = greyS14.copyWith(fontWeight: FontWeight.w800);

  //s15
  static final greyS15 = grey.copyWith(fontSize: 15);
  static final greyS15W500 = greyS15.copyWith(fontWeight: FontWeight.w500);
  static final greyS15Bold = greyS15.copyWith(fontWeight: FontWeight.bold);

  //s16
  static final greyS16 = grey.copyWith(fontSize: 16);
  static final greyS16Bold = greyS16.copyWith(fontWeight: FontWeight.bold);
  static final greyS16W800 = greyS16.copyWith(fontWeight: FontWeight.w800);

  //s18
  static final greyS18 = grey.copyWith(fontSize: 18);
  static final greyS18Bold = greyS18.copyWith(fontWeight: FontWeight.bold);
  static final greyS18W800 = greyS18.copyWith(fontWeight: FontWeight.w800);

  ///Tint
  static const tint = TextStyle(color: AppColors.secondary);

  //s12
  static final tintS12 = tint.copyWith(fontSize: 12);
  static final tintS12Bold = tintS12.copyWith(fontWeight: FontWeight.bold);
  static final tintS12W800 = tintS12.copyWith(fontWeight: FontWeight.w800);
  static final tintS12W300 = tintS12.copyWith(fontWeight: FontWeight.w300);
  static final tintS12W400 = tintS12.copyWith(fontWeight: FontWeight.w400);

  //s14
  static final tintS14 = tint.copyWith(fontSize: 14);
  static final tintS14Bold = tintS14.copyWith(fontWeight: FontWeight.bold);
  static final tintS14W800 = tintS14.copyWith(fontWeight: FontWeight.w800);

  //s16
  static final tintS16 = tint.copyWith(fontSize: 16);
  static final tintS16Bold = tintS16.copyWith(fontWeight: FontWeight.bold);
  static final tintS16W400 = tintS16.copyWith(fontWeight: FontWeight.w400);
  static final tintS16W800 = tintS16.copyWith(fontWeight: FontWeight.w800);

  //s18
  static final tintS18 = tint.copyWith(fontSize: 18);
  static final tintS18Bold = tintS18.copyWith(fontWeight: FontWeight.bold);
  static final tintS18W800 = tintS18.copyWith(fontWeight: FontWeight.w800);

  //s20
  static final tintS20 = tint.copyWith(fontSize: 20);
  static final tintS20W600 = tintS20.copyWith(fontWeight: FontWeight.w600);

  ///TextGray
  static const textGray = TextStyle(color: AppColors.textGray);

  //S16
  static final textGrayS16 = textGray.copyWith(fontSize: 16);

  ///primary
  static const primary = TextStyle(color: AppColors.primary);

  static final primaryS24W600 = primary.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static final primaryS15W600 = primary.copyWith(
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );

  static final primaryS12W400 = primary.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static final primaryS12W600 = primary.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  static final primaryS18W600 = primary.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  ///secondary
  static const secondary = TextStyle(color: AppColors.secondary);

  static final secondaryS15Bold = secondary.copyWith(
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );

  static final secondaryS15W500 = secondary.copyWith(
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );

  static final secondaryS16Regular = secondary.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static final secondaryS16W600 = secondary.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static final secondaryS16Bold = secondary.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static final secondaryS18 = secondary.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static final secondaryS18Bold = secondary.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static final secondaryS20W600 = secondary.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static final secondaryS24 = secondary.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  /// Error color
  static const errorText = TextStyle(color: AppColors.textFieldErrorBorder);

  // S24 W600
  static final errorTextS24W600 = errorText.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  // S9 W400
  static final errorTextS9W400 = errorText.copyWith(
    fontSize: 9,
    fontWeight: FontWeight.w400,
  );
}
