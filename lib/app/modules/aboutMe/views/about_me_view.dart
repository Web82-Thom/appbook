// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/about_me_controller.dart';

class AboutMeView extends GetView<AboutMeController> {
  const AboutMeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('À propos de moi'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Bonjour, je m’appelle Thomas ORTA, je suis née le 02/03/1982 à Villeurbanne dans le 69. Depuis 1993 je vis dans le tarn et Garonne, qui est devenue ma région de cœur. Marié en 2008, nous avons une fille de 11 ans. Habitant de Léojac depuis 2012, nous avons la chance de posséder la fibre.',
                      style: TextStyle(fontSize: 13),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Text(
                "J'ai découvert le métier de développeur Web en 2018, suite à une reconversion professionnelle. Mes débuts d'apprentissage ont été en autodidacte, jusqu'au jour ou j'ai intégré OpenClassrooms afin de passer mon diplôme de Développeur Web-Junior. ",
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.justify
              ),
            ],
          ),
        ),
      ),
    );
  }
}
