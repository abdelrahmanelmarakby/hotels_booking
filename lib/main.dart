import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hotels_booking/app.dart';
import 'package:hotels_booking/app/data/local_data_source/sqlite_database.dart';
import 'package:hotels_booking/core/values/app_constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(AppDataBase());
  try {
    /* await Get.find<AppDataBase>().insertUser(User(
        id: 150,
        name: "Admin Test",
        email: "admin@gmail.com",
        password: "1234",
        phone: "01019706842",
        image: "",
        role: AppConstants.userRoles[0],
        status: "Active"));*/
  } catch (e) {
    print(e);
  }
  runApp(const MyApp());
}
