import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

AppTheme lightAppTheme() {
  return AppTheme(
    id: 'light',
    description: "Light Theme",
    data: ThemeData(
      brightness: Brightness.light,
    ),
  );
}
