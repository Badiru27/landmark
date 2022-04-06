import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:landmark_app/app/app.locator.dart';
import 'package:landmark_app/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Landmark App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
    );
  }
}
