import 'package:get/get.dart';

import '../controllers/hotel_details_controller.dart';

class HotelDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HotelDetailsController>(
      () => HotelDetailsController(),
    );
  }
}
