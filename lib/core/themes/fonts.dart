import 'package:flutter/material.dart';
import 'package:natv_kg/core/themes/colors.dart';

abstract class AppTextStyles {
  static const TextStyle header1 = TextStyle(
    fontFamily: 'Arimo',
    fontSize: 30,
    fontWeight: FontWeight.normal,
    color: AppColors.red,
  );
  static const TextStyle fontStyle = TextStyle(
    fontFamily: 'Arimo',
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );
  static const TextStyle fontStyleBold = TextStyle(
    fontFamily: 'Arimo',
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static const TextStyle fNormals19 = TextStyle(
    fontFamily: "Arimo",
    fontSize: 19,
    color: Colors.black,
  );
  static const TextStyle fNormals16 = TextStyle(
    fontFamily: 'Arimo',
    fontSize: 16,
    color: Color(0xff808080),
  );
  static const TextStyle fBolds24 = TextStyle(
    fontFamily: 'Arimo',
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.red,
  );
  static const TextStyle fBolds18 = TextStyle(
    fontFamily: 'Arimo',
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: Colors.black,
  );
}
