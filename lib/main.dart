import 'package:flutter/cupertino.dart';
import 'package:jovajovajova/screens/main_screen/main_screen.dart';

void main(){
  runApp(MainScreen());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
