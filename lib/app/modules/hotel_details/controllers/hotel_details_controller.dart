import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hotels_booking/app/data/local_data_source/sqlite_database.dart';

class HotelDetailsController extends GetxController {
  final Hotel hotel = Get.arguments;
  DateTime from = DateTime.now();
  DateTime to = DateTime.now();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final price = 0;
}
