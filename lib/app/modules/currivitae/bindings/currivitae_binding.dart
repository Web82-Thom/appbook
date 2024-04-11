import 'package:get/get.dart';

import '../controllers/currivitae_controller.dart';

class CurrivitaeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CurrivitaeController>(
      () => CurrivitaeController(),
    );
  }
}
