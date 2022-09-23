import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import 'package:get/get.dart';
import 'package:hotels_booking/app/data/local_data_source/sqlite_database.dart';
import 'package:hotels_booking/app/routes/app_pages.dart';
import 'package:hotels_booking/core/resourses/color_manager.dart';
import 'package:hotels_booking/core/values/app_constants.dart';

class HomeController extends GetxController {
  TextEditingController password = TextEditingController();

  TextEditingController email = TextEditingController();

  Future<void> generateHotels() async {
    await Get.find<AppDataBase>().deleteAllHotels();
    for (int i = 0; i < 10; i++) {
      await Get.find<AppDataBase>().insertHotel(Hotel(
          id: i,
          name: AppConstants
              .hotelNames[Random().nextInt(AppConstants.hotelNames.length)],
          address: 'Address $i',
          description: lorem(
              paragraphs: Random().nextInt(2) + 1,
              words: Random().nextInt(50) + 20),
          image: AppConstants
              .hotelImages[Random().nextInt(AppConstants.hotelImages.length)],
          rating: Random().nextInt(5) + 1,
          bookingsCount: Random().nextInt(100),
          roomsCount: Random().nextInt(100),
          price: "${(Random().nextInt(100) + 500) * 5} ",
          hotelStatus: "Available"));
    }
  }

  generateBookings() {
    Get.find<AppDataBase>().deleteAllBookings();
    for (int i = 0; i < 10; i++) {
      Get.find<AppDataBase>().insertBooking(Booking(
          id: i,
          hotelId: Random().nextInt(10),
          roomId: Random().nextInt(100),
          clientId: Random().nextInt(100),
          checkIn: DateTime.now(),
          checkOut: DateTime.now().add(Duration(days: Random().nextInt(10))),
          expectedCheckIn: DateTime.now(),
          expectedCheckOut:
              DateTime.now().add(Duration(days: Random().nextInt(10))),
          bookingStatus: "Available",
          description: lorem(
              paragraphs: Random().nextInt(2) + 1,
              words: Random().nextInt(50) + 20),
          image: AppConstants
              .hotelImages[Random().nextInt(AppConstants.hotelImages.length)],
          name: AppConstants
              .hotelNames[Random().nextInt(AppConstants.hotelNames.length)],
          price: "${(Random().nextInt(100) + 500) * 50} "));
    }
  }

  generateRooms() {
    Get.find<AppDataBase>().deleteAllRooms();
    for (int i = 0; i < 100; i++) {
      Get.find<AppDataBase>().insertRoom(Room(
          id: i,
          hotelId: Random().nextInt(11),
          type: AppConstants
              .roomType[Random().nextInt(AppConstants.roomType.length)],
          currentReservation: Random().nextInt(100),
          description: lorem(
              paragraphs: Random().nextInt(2) + 1,
              words: Random().nextInt(50) + 20),
          image: AppConstants
              .hotelImages[Random().nextInt(AppConstants.hotelImages.length)],
          name: AppConstants
              .hotelNames[Random().nextInt(AppConstants.hotelNames.length)],
          price: "${(Random().nextInt(100) + 500) * 50} ",
          roomStatus: AppConstants
              .status[Random().nextInt(AppConstants.status.length)]));
    }
  }

  generateUsers() {
    Get.find<AppDataBase>().deleteAllUsers();
    for (int i = 0; i < 100; i++) {
      Get.find<AppDataBase>().insertUser(User(
          id: i,
          name: AppConstants
              .hotelNames[Random().nextInt(AppConstants.hotelNames.length)],
          email: '$i',
          password: '$i',
          phone: '  ',
          role: AppConstants
              .userRoles[Random().nextInt(AppConstants.userRoles.length)],
          image: AppConstants
              .hotelImages[Random().nextInt(AppConstants.hotelImages.length)],
          status: "Available"));
    }
  }

  generateClients() {
    Get.find<AppDataBase>().deleteAllClients();
    for (int i = 0; i < 100; i++) {
      Get.find<AppDataBase>().insertClient(Client(
          id: i,
          name: AppConstants
              .hotelNames[Random().nextInt(AppConstants.hotelNames.length)],
          email: '$i',
          password: '$i',
          phone: '  ',
          image: AppConstants
              .hotelImages[Random().nextInt(AppConstants.hotelImages.length)],
          status: "Available"));
    }
  }

  Future<String?> login(email, password) async {
    Get.find<AppDataBase>().loginUser(email, password).then((value) {
      print(value.toString());
      Get.close(1);
      if (value?.role == "Client") {
        return Get.snackbar(
            "Invalid permissions", "you are not permitted to see this data",
            backgroundColor: ColorsManger.error, colorText: ColorsManger.grey1);
      }
      value != null
          ? Get.toNamed(Routes.DASHBOARD, arguments: value.role)
          : Get.snackbar(
              "Invalid credentials", "email or password are not correct",
              backgroundColor: ColorsManger.error,
              colorText: ColorsManger.grey1);

      return value?.role;
    });
  }
}
