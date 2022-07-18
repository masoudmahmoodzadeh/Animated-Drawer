import 'package:flutter/material.dart';

import 'app_colors.dart';

class ThemeManager {
  ThemeData create() {
    return ThemeData(
        primaryColor: AppColors.primary,
        appBarTheme: _buildAppBar(),
        iconTheme: const IconThemeData(
          color: AppColors.primary,
        ),
        listTileTheme: const ListTileThemeData(iconColor: AppColors.primary),
        colorScheme: ColorScheme.fromSwatch(accentColor: AppColors.secondary));
  }

  AppBarTheme _buildAppBar() {
    return const AppBarTheme(color: AppColors.primary);
  }
}
