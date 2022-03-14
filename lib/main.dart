import 'package:bbm_mobile/ui/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MainPage(),
    );
  }
}

// PaymentPage(
// transaction: Transaction(
// quantity: 2,
// food: mockFood[2],
// id: 1,
// user: mockUser,
// total: (mockFood[2].price * 2 * 1.1).toInt() + 5000,
// ),
// ),
