import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:quatre_c/utils/app_colors.dart';
import 'package:quatre_c/utils/app_router.dart';
import 'package:quatre_c/utils/constants.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) {
        return const MyApp();
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: kfontFamily,
        colorScheme: const ColorScheme.light(),
        scaffoldBackgroundColor: AppColors.surfaceColor,
      ),
      getPages: AppRouter.getViews(),
    );
  }
}
