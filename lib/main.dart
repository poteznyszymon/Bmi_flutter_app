import 'package:bmi_app_2/pages/home_page.dart';
import 'package:bmi_app_2/pages/results_page.dart';
import 'package:bmi_app_2/providers/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DataProvider(),
        )
      ],
      child: MaterialApp(
        routes: {
          '/results_page': (context) => const ResultsPage(),
        },
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
