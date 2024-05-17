import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/contact_controller.dart';

class ContactView extends GetView<ContactController> {
  const ContactView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: const BackButton(
          color: Colors.white,
        ),
        title: const Text(
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          'Contacts',
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/reunionFlag.png',
                ),
              ),
            ),
            alignment: Alignment.center,
            // color: Colors.amber,
            height: 200,
            child: const CircleAvatar(
              radius: 80,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(
                'assets/images/photoId.jpg',
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.amber,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('Téléphone:')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('06.12.14.92.55')],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('Email')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('thom.orta@gmail.com')],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('Site Web')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('En construction PHP')],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
