import 'package:car_flutter/home_page.dart';
import 'package:car_flutter/providers/car_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Start project
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CarProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
