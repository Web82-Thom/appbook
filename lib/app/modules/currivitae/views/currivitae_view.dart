import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../controllers/currivitae_controller.dart';

class CurrivitaeView extends GetView<CurrivitaeController> {
  const CurrivitaeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon Cv'),
        centerTitle: true,
      ),
      body: SfPdfViewer.asset("assets/docs/cvThomasOrtaDevWebApp.pdf"),
    );
  }
}
