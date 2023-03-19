import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/my_provider.dart';

import 'helper/navigator.dart';
import 'helper/routes.dart';
import 'styles/theme.dart';

void main() {
  runApp(ChangeNotifierProvider<NavigationController>(
      create: (context) => NavigationController(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      navigatorKey:
          NavigationConfiguration.navigationConfiguration.navigatorKey,
      // home: LoginScreen(),
    );
  }
}
