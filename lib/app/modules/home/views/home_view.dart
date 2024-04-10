import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  onError: (error,stackTrace) => const Center(child: CircularProgressIndicator(color: Colors.black,)),
                  image: const NetworkImage('https://img.freepik.com/free-photo/futurism-perspective-digital-nomads-lifestyle_23-2151252447.jpg?t=st=1712788171~exp=1712791771~hmac=e79df48c098512faa26829cc91b2efeabcf9709a16533f291f7e12e95b8f54a2&w=996'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.topRight,
                    children: <Widget>[
                      Text(
                        'Thomas ORTA',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 2
                            ..color = Colors.amber, // <-- Border color
                        ),
                      ),
                      const Text(
                        'Thomas ORTA',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // <-- Inner color
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.topRight,
                    children: <Widget>[
                      Text(
                        'Développeur',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 2
                            ..color = Colors.amber, // <-- Border color
                        ),
                      ),
                      const Text(
                        'Développeur',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // <-- Inner color
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.topRight,
                    children: <Widget>[
                      Text(
                        'full stack',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 2
                            ..color = Colors.amber, // <-- Border color
                        ),
                      ),
                      const Text(
                        'full stack',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // <-- Inner color
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.black,size: 20),
              title: const Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_box, color: Colors.black, size: 20),
              title: const Text("À propos de moi"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.grid_3x3_outlined, color: Colors.black, size: 20,),
              title: const Text("Mon curriculum vitae "),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail, color: Colors.black, size: 20),
              title: const Text("Contact"),
              onTap: () {},
            ),
            InkWell(
              onTap: () {
                launchUrl(Uri.parse('https://github.com/Web82-Thom/appbook'));
              },
              child: ListTile(
                leading: Image.asset(
                  'assets/images/github.png',
                  width: 20,
                ),
                title: const Text("Github Web82-Thom",),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.WELCOME);
            },
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(controller.title),
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
            Obx(
              () => Text(
                controller.count.string,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              controller.incrementCounter();
            },
            tooltip: 'Increment',
            heroTag: null,
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 5,
          ),
          FloatingActionButton(
            onPressed: () {
              controller.incrementCounterless();
            },
            tooltip: 'Increment',
            heroTag: null,
            child: const Text(
              "-",
              style: TextStyle(fontSize: 30.00),
            ),
          ),
        ],
      ),
    );
  }
}
