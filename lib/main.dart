// ignore_for_file: unnecessary_new

import 'package:devbase/presentation/auth/auth_container.dart';
import 'package:devbase/presentation/menu/menu_container.dart';
import 'package:devbase/utils/nested_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(DevApp());
  });
}

class DevApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DevBase',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Brandon'),
      initialRoute: 'auth/login',
      onGenerateRoute: buildNestedRoutes(
        [AuthRoute.initializeRouter(), 
        MenuRoute.initializeRouter()],
      ),
    );
  }
}
