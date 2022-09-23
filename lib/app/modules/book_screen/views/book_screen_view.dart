import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hotels_booking/app/data/local_data_source/sqlite_database.dart';
import 'package:hotels_booking/core/resourses/color_manager.dart';
import 'package:hotels_booking/core/resourses/font_manager.dart';
import 'package:hotels_booking/core/resourses/font_styles_manager.dart';
import 'package:hotels_booking/core/resourses/size_manager.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../controllers/book_screen_controller.dart';

class BookScreenView extends GetView<BookScreenController> {
  const BookScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BookScreenView'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(AppPadding.padding12),
          child: GetBuilder<BookScreenController>(
            builder: (controller) => Column(children: [
              SizedBox(
                  height: Get.height * 0.3,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppBorderRadius.radius12),
                        image: DecorationImage(
                            image: NetworkImage(
                              controller.room.image,
                            ),
                            fit: BoxFit.cover,
                            colorFilter: const ColorFilter.mode(
                                Colors.black54, BlendMode.darken)),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${controller.hotel.name} Hotel",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: FontSize.xxlarge,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              controller.hotel.address,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: FontSize.small,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "${controller.room.name} ${controller.room.type} Room",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: FontSize.small,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "${controller.room.price} \$ / night",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: FontSize.small,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ))),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: Get.height * 0.3,
                child: SfDateRangePicker(
                  view: DateRangePickerView.month,
                  selectionMode: DateRangePickerSelectionMode.range,
                  onSelectionChanged: controller.selectDateRange,
                  enablePastDates: false,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Total Price: ${controller.totalDays * int.parse(controller.room.price)} \$",
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: FontSize.large,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: ColorsManger.primary,
                    minimumSize: Size(Get.width, Get.height / 12),
                  ),
                  onPressed: () {
                    Get.dialog(
                      AlertDialog(
                        title: Column(children: [
                          //Login form
                          Text(
                            'You will be charged ${controller.totalDays * int.parse(controller.room.price)} \$ and will get a 95% discount on your next booking or now if you are already a client',
                            style: getBoldTextStyle(
                                fontSize: FontSize.medium,
                                color: ColorsManger.grey),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Login',
                            style: getBoldTextStyle(
                                fontSize: FontSize.xlarge,
                                color: ColorsManger.black),
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          TextFormField(
                            controller: controller.email,
                            decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: getRegularTextStyle(
                                    fontSize: FontSize.medium,
                                    color: ColorsManger.grey),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: controller.password,
                            decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: getRegularTextStyle(
                                    fontSize: FontSize.medium,
                                    color: ColorsManger.grey),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextButton(
                              onPressed: () async {
                                await controller
                                    .login(
                                  controller.email.text,
                                  controller.password.text,
                                )
                                    .then((value) {
                                  if (value != null) {
                                    Get.find<AppDataBase>()
                                        .getClientById(value.id)
                                        .then((client) {
                                      if (client != null) {
                                        Get.find<AppDataBase>().insertBooking(Booking(
                                            id: Random().nextInt(4294967296),
                                            name:
                                                "${controller.room.name}/${controller.room.type}",
                                            description:
                                                controller.room.description,
                                            image: controller.room.image,
                                            price:
                                                "${(int.parse(controller.room.price) * controller.totalDays) * 0.05}",
                                            bookingStatus: "Pending",
                                            expectedCheckIn: controller.from!,
                                            expectedCheckOut: controller.to!,
                                            checkIn: DateTime.now(),
                                            checkOut: DateTime.now(),
                                            hotelId: controller.hotel.id,
                                            roomId: controller.room.id,
                                            clientId: client.first.id));
                                        Get.snackbar("Congratulations",
                                            "${controller.room.name}/${controller.room.type} Room Booked Successfully with 95% discount",
                                            snackPosition: SnackPosition.BOTTOM,
                                            backgroundColor:
                                                ColorsManger.success,
                                            colorText: ColorsManger.white);
                                        return;
                                      }
                                    });
                                    Get.find<AppDataBase>().insertBooking(Booking(
                                        id: Random().nextInt(4294967296),
                                        name:
                                            "${controller.room.name}/${controller.room.type}",
                                        description:
                                            controller.room.description,
                                        image: controller.room.image,
                                        price:
                                            "${int.parse(controller.room.price) * controller.totalDays}",
                                        bookingStatus: "Pending",
                                        expectedCheckIn: controller.from!,
                                        expectedCheckOut: controller.to!,
                                        checkIn: DateTime.now(),
                                        checkOut: DateTime.now(),
                                        hotelId: controller.hotel.id,
                                        roomId: controller.room.id,
                                        clientId: value.id));
                                    Get.find<AppDataBase>().insertClient(Client(
                                        id: value.id,
                                        name: value.name,
                                        email: value.email,
                                        password: value.password,
                                        phone: value.phone,
                                        image: value.image,
                                        status: value.status));
                                    Get.snackbar("Booked",
                                        "${controller.room.name}/${controller.room.type} Room Booked Successfully",
                                        snackPosition: SnackPosition.BOTTOM,
                                        backgroundColor: ColorsManger.primary,
                                        colorText: ColorsManger.white);
                                  }
                                });
                              },
                              child: Text(
                                "Login",
                                style: getMediumTextStyle(
                                    fontSize: FontSize.large,
                                    color: Colors.black),
                              ))
                        ]),
                      ),
                    );
                  },
                  child: Text("Book Now",
                      style: getBoldTextStyle(
                          color: Colors.white, fontSize: FontSize.xxlarge)))
            ]),
          ),
        )));
  }
}
