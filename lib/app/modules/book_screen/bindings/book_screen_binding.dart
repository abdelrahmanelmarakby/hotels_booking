import 'package:get/get.dart';

import '../controllers/book_screen_controller.dart';

class BookScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookScreenController>(
      () => BookScreenController(),
    );
  }
}
