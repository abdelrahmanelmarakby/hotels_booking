import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotels_booking/app/data/local_data_source/sqlite_database.dart';
import 'package:hotels_booking/app/modules/hotel_details/controllers/hotel_details_controller.dart';
import 'package:hotels_booking/app/routes/app_pages.dart';
import 'package:hotels_booking/core/resourses/color_manager.dart';
import 'package:hotels_booking/core/resourses/font_manager.dart';
import 'package:hotels_booking/core/resourses/font_styles_manager.dart';
import 'package:hotels_booking/core/resourses/size_manager.dart';

class RoomInfoDialog extends GetWidget<HotelDetailsController> {
  final Room room;

  const RoomInfoDialog({required this.room, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppBorderRadius.radius12),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      content: Container(
        width: Get.width * .8,
        margin: const EdgeInsets.only(bottom: 23),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                room.image,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 39, bottom: 27),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      room.name,
                      style: getBoldTextStyle(
                        fontSize: FontSize.xlarge,
                        color: ColorsManger.black,
                      ),
                    ),
                  ),
                  Text(room.type,
                      style: getBoldTextStyle(
                        fontSize: FontSize.xlarge,
                        color: ColorsManger.success,
                      ))
                ],
              ),
            ),
            Text(
              room.description,
              style: getRegularTextStyle(
                fontSize: FontSize.medium,
                color: ColorsManger.grey,
              ),
              maxLines: 6,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed(Routes.BOOK_SCREEN,
                      arguments: {"room": room, "hotel": controller.hotel});
                },
                child: Text(
                  'Book now',
                  style: getBoldTextStyle(
                      fontSize: FontSize.xlarge, color: ColorsManger.success),
                )),
          ],
        ),
      ),
    );
  }
}
/*                        if (AppGlobals().currentUser !=
                                              null) {
                                            await Get.find<AppDataBase>()
                                                .getClientById(AppGlobals()
                                                    .currentUser!
                                                    .id)
                                                .then((value) {
                                              print(value);
                                            });
                                          } else {
                                            Get.close(1);
                                            Get.dialog(AlertDialog(
                                                title: Column(
                                              children: [
                                                //Login form
                                                Text(
                                                  'Login',
                                                  style: getBoldTextStyle(
                                                      fontSize: FontSize.xlarge,
                                                      color:
                                                          ColorsManger.black),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),

                                                TextFormField(
                                                  controller: controller.email,
                                                  decoration: InputDecoration(
                                                      hintText: 'Email',
                                                      hintStyle:
                                                          getRegularTextStyle(
                                                              fontSize: FontSize
                                                                  .medium,
                                                              color:
                                                                  ColorsManger
                                                                      .grey),
                                                      border:
                                                          OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10))),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                TextFormField(
                                                  controller:
                                                      controller.password,
                                                  decoration: InputDecoration(
                                                      hintText: 'Password',
                                                      hintStyle:
                                                          getRegularTextStyle(
                                                              fontSize: FontSize
                                                                  .medium,
                                                              color:
                                                                  ColorsManger
                                                                      .grey),
                                                      border:
                                                          OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10))),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                TextButton(
                                                    onPressed: () async {
                                                      await Get.find<
                                                              AppDataBase>()
                                                          .loginUser(
                                                              controller
                                                                  .email.text,
                                                              controller
                                                                  .password
                                                                  .text)
                                                          .then((value) {
                                                        if (value != null) {
                                                          /*Get.find<AppDataBase>()
                                                          .insertClient(Client(
                                                              id: value.id,
                                                              name: value.name,
                                                              email: value.email,
                                                              password:
                                                                  value.password,
                                                              phone: value.phone,
                                                              image: value.image,
                                                              status:
                                                                  value.status));
                                                                  */
                                                          Get.find<AppDataBase>().insertBooking(Booking(
                                                              id: Random()
                                                                  .nextInt(
                                                                      4294967296),
                                                              name:
                                                                  "${room.name}/${room.type}",
                                                              description: room
                                                                  .description,
                                                              image: room.image,
                                                              price: room.price,
                                                              bookingStatus:
                                                                  "Pending",
                                                              expectedCheckIn:
                                                                  controller
                                                                      .from,
                                                              expectedCheckOut:
                                                                  controller.to,
                                                              checkIn: DateTime
                                                                  .now(),
                                                              checkOut: DateTime
                                                                  .now(),
                                                              hotelId:
                                                                  controller
                                                                      .hotel.id,
                                                              roomId: room.id,
                                                              clientId:
                                                                  value.id));

                                                          Get.back();
                                                          Get.dialog(
                                                              AlertDialog(
                                                            //Payment form
                                                            title: Column(
                                                              children: [
                                                                Text(
                                                                  'Payment',
                                                                  style: getBoldTextStyle(
                                                                      fontSize:
                                                                          FontSize
                                                                              .xlarge,
                                                                      color: ColorsManger
                                                                          .black),
                                                                ),
                                                                const SizedBox(
                                                                  height: 20,
                                                                ),
                                                                Text(
                                                                  'Total price: ${room.price * controller.from.difference(controller.to).inDays} \$',
                                                                  style: getBoldTextStyle(
                                                                      fontSize:
                                                                          FontSize
                                                                              .medium,
                                                                      color: ColorsManger
                                                                          .black),
                                                                ),
                                                                const SizedBox(
                                                                  height: 20,
                                                                ),
                                                                TextButton(
                                                                    onPressed:
                                                                        () {
                                                                      Get.back();
                                                                      Get.back();
                                                                    },
                                                                    child: Text(
                                                                      'Pay',
                                                                      style: getBoldTextStyle(
                                                                          fontSize: FontSize
                                                                              .xlarge,
                                                                          color:
                                                                              ColorsManger.success),
                                                                    )),
                                                              ],
                                                            ),
                                                          ));
                                                        }
                                                      });
                                                    },
                                                    child: Text(
                                                      'Login',
                                                      style: getBoldTextStyle(
                                                          fontSize:
                                                              FontSize.xlarge,
                                                          color: ColorsManger
                                                              .success),
                                                    )),
                                              ],
                                            )));
  */