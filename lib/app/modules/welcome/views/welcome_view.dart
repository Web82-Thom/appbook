import 'package:appbook/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Bienvenue',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const Center(
            child: Text(
              'sur mon book',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const Center(
            child: Text(
              'dev Flutter',
              style: TextStyle(fontSize: 20),
            ),
          ),
          TextButton(
            onPressed: ()=>Get.toNamed(Routes.HOME), 
            child: const Text('Entrer'),
            )
        ],
      ),
    );
  }
}
