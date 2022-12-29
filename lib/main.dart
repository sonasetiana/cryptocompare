import 'package:CryptoCompare/presentation/route/app_page.dart';
import 'package:CryptoCompare/presentation/route/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'di/injection.dart' as di;

void main() async{
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      getPages: AppPage.pages,
      initialRoute: AppRoutes.home,
    );
  }
}

