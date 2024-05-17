// ignore_for_file: avoid_print

import 'package:appbook/app/modules/home/controllers/card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends GetView<HomeController> {
  
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    CardController cardController = Get.put(CardController());
    return GestureDetector(
      onTap: () =>     SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top]),

      child: Scaffold(
        drawer: Stack(
          children: [
            Drawer(
              child: ListView(
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        onError: (error, stackTrace) => const Center(
                          child: CircularProgressIndicator(
                            color: Colors.black,
                          ),
                        ),
                        image: const NetworkImage(
                          'https://img.freepik.com/free-photo/futurism-perspective-digital-nomads-lifestyle_23-2151252447.jpg?t=st=1712788171~exp=1712791771~hmac=e79df48c098512faa26829cc91b2efeabcf9709a16533f291f7e12e95b8f54a2&w=996',
                        ),
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
                    leading: const Icon(Icons.home, color: Colors.black, size: 20),
                    title: const Text("Home"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading:
                        const Icon(Icons.account_box, color: Colors.black, size: 20),
                    title: const Text("À propos de moi"),
                    onTap: () {
                      Get.toNamed(Routes.ABOUT_ME);
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.grid_3x3_outlined,
                      color: Colors.black,
                      size: 20,
                    ),
                    title: const Text("Mon curriculum vitae "),
                    onTap: () {
                      Get.toNamed(Routes.CURRIVITAE);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.contact_mail, color: Colors.black, size: 20),
                    title: const Text("Contact"),
                    onTap: () {
                      Get.toNamed(Routes.CONTACT);
                    },
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
                      title: const Text(
                        "Github Web82-Thom",
                      ),
                    ),
                  ), 
                  
                ],
              ),
            ),
            Positioned(
                bottom: -4,
                right: 0,
                width: 50,
                child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.indigo),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topLeft: Radius.circular(10)),
                          ),
                        ),
                        padding: MaterialStatePropertyAll(
                          EdgeInsets.only(right: 0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.close, color: Colors.black, size: 30,),
                    ),
            ),
          ],
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
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Je vous présente les fonctions que je suis capable de réaliser, l\'aplication est connecter via firebase.'),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: (2 / 1),
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                padding: const EdgeInsets.all(1.0),
                children: cardController.items!.map(
                  (data) => GestureDetector(
                    onTap: () {
                      // Navigator.of(context).pushNamed(RouteName.GridViewBuilder);
                      print(data.id);
                    },
                    child: Container(
                      width: 150,
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 1,),
                      color: data.color,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Text(data.id.toString()),
                          data.icon as Icon,
                          Expanded(
                            child: Text(
                              data.title.toString(),
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ).toList(),
              ),
            ),
            // Positioned(
            //   height: 40,
            //   width: 40,
            //   top: 250,
            //   left: 0,
            //   child: SizedBox(
            //     child: Builder(
            //       builder: (context) {
            //         return ElevatedButton(
            //           style: const ButtonStyle(
            //             backgroundColor:
            //                 MaterialStatePropertyAll(Colors.indigo),
            //             shape: MaterialStatePropertyAll(
            //               RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), topRight: Radius.circular(10)),
            //               ),
            //             ),
            //             padding: MaterialStatePropertyAll(
            //               EdgeInsets.only(right: 0),
            //             ),
            //           ),
            //           onPressed: () {
            //             Scaffold.of(context).openDrawer();
            //           },
            //           child: const Icon(Icons.chevron_right, color: Colors.black, size: 30,),
            //         );
            //       },
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
