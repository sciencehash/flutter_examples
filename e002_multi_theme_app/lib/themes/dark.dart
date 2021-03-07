import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

AppTheme darkAppTheme() {
  return AppTheme(
    id: 'dark',
    description: "Dark Theme",
    data: ThemeData(
      brightness: Brightness.dark,
    ),
  );
}
