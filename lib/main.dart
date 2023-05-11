import 'package:flutter/material.dart';
// import 'package:routes_flutter/pages/main_page.dart';
import 'package:routes_flutter/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.blueGrey[900],
          scaffoldBackgroundColor: Colors.grey),
      // theme: ThemeData(
      //     primaryColor: Colors.black,
      //     accentColor: Colors.deepOrange,
      //     scaffoldBackgroundColor: Colors.yellow[100],
      //     fontFamily: 'Times New Roman'),
      debugShowCheckedModeBanner: false,
      initialRoute: RouteManager.homePage,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}
