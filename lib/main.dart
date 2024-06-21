import 'package:flutter/material.dart';
import 'package:manit_erp/common/widgets/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MANIT ERP',
      theme: ThemeData(
        useMaterial3: true, 
      ),
      debugShowCheckedModeBanner: false,
      home: const BottomBar(),
    );
  }
}
