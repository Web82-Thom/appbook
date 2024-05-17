import 'package:appbook/app/modules/home/controllers/home_controller.dart';
import 'package:appbook/app/routes/app_pages.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/data/constants/constant_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HomeController homeController = HomeController();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top,]);

  runApp( 
    GetMaterialApp(
      title: homeController.title,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
        primaryColor: primaryColor,
        appBarTheme: AppBarTheme(
          backgroundColor: primaryColor,
        ),
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
