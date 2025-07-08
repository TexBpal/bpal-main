import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:qrpay/routes/routes.dart';

import 'backend/services/notification_service.dart';
import 'backend/utils/network_check/dependency_injection.dart';
import 'language/language_controller.dart';
import 'utils/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  // Locking Device Orientation
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  NotificationService.init();
  // check internet connection
  InternetCheckDependencyInjection.init();
  GetStorage.init();
  // main app
  runApp(const MyApp());
}

// This widget is the root of your application
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (_, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Themes.light,
        darkTheme: Themes.dark,
        themeMode: Themes().theme,
        navigatorKey: Get.key,
        initialRoute: Routes.splashScreen,
        getPages: Routes.list,
        initialBinding: BindingsBuilder(
          () {
            Get.put(LanguageController());
          },
        ),
        builder: (context, widget) {
          ScreenUtil.init(context);
          final languageController = Get.find<LanguageController>();

          return Obx(
            () => MediaQuery(
              data: MediaQuery.of(context)
                  .copyWith(textScaler: const TextScaler.linear(1.0)),
              child: Directionality(
                textDirection: languageController.isLoading
                    ? TextDirection.ltr
                    : languageController.languageDirection,
                child: widget!,
              ),
            ),
          );
        },
      ),
    );
  }
}
