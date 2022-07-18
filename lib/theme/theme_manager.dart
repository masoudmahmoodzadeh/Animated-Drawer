import 'package:flutter/material.dart';

import 'app_colors.dart';

class ThemeManager {
  ThemeData create() {
    return ThemeData(
      primaryColor: AppColors.primary,
      appBarTheme: const AppBarTheme(color: AppColors.primary),
      iconTheme: const IconThemeData(color: AppColors.primary),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: AppColors.primary,
          onPrimary: Colors.white,
          shape: const StadiumBorder(),
        ),
      ),
      listTileTheme: const ListTileThemeData(iconColor: AppColors.primary),
      colorScheme: ColorScheme.fromSwatch(accentColor: AppColors.secondary),
    );
  }

  AppBarTheme _buildAppBar() {
    return const AppBarTheme(color: AppColors.primary);
  }
}
