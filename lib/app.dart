import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotels_booking/core/services/dynamic_theme.dart';
import 'app/routes/app_pages.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final botToastBuilder = BotToastInit();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Initium Hotels',
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      debugShowCheckedModeBanner: false,
      navigatorObservers: [BotToastNavigatorObserver()],
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      locale: Get.locale,
      builder: (context, child) {
        child = MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: botToastBuilder(context, child),
        );
        ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget),
          breakpoints: const [
            ResponsiveBreakpoint.resize(350, name: MOBILE),
            ResponsiveBreakpoint.autoScale(600, name: TABLET),
            ResponsiveBreakpoint.resize(800, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
          ],
        );
        return child;
      },
    );
  }
}
