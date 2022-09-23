import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hotels_booking/app/data/local_data_source/sqlite_database.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class BookScreenController extends GetxController {
  Room room = Get.arguments["room"];
  Hotel hotel = Get.arguments["hotel"];
  DateTime? from = DateTime.now();

  DateTime? to = DateTime.now().add(const Duration(days: 1));
  int totalDays = 0;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void selectDateRange(DateRangePickerSelectionChangedArgs args) {
    from = args.value.startDate;
    to = args.value.endDate;
    totalDays = (to?.difference(from ?? DateTime.now()).inDays) ?? 0;
    Get.log(int.parse(room.price).toString());
    update();
  }

  Future<User?> login(email, password) async {
    return await Get.find<AppDataBase>().loginUser(email, password);
  }
}
