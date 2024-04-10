import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){Get.toNamed(Routes.WELCOME);}, icon: const Icon(Icons.exit_to_app))
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title:Text(controller.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              textAlign: TextAlign.center, 
              'You have pushed the button this many times:',
            ),
            Obx(() =>Text(
              controller.count.string,
              style: Theme.of(context).textTheme.headlineMedium,
            ),),
            
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: (){
              controller.incrementCounter();
            } ,
            tooltip: 'Increment',
            heroTag: null,
            child: const Icon(Icons.add),
          ),
          const SizedBox (height: 5,),
          FloatingActionButton(
            onPressed:(){
              controller.incrementCounterless();
            },
            tooltip: 'Increment',
            heroTag: null,
            child: const Text("-", style: TextStyle(fontSize: 30.00),),
          ),
        ],
      )
    );
  }
}
