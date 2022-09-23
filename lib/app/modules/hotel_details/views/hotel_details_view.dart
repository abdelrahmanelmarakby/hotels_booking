import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hotels_booking/app/data/local_data_source/sqlite_database.dart';
import 'package:hotels_booking/app/modules/home/views/home_view.dart';
import 'package:hotels_booking/app/modules/hotel_details/views/room_info_widget.dart';
import 'package:hotels_booking/app/routes/app_pages.dart';
import 'package:hotels_booking/core/resourses/color_manager.dart';
import 'package:hotels_booking/core/resourses/font_styles_manager.dart';
import 'package:hotels_booking/core/resourses/size_manager.dart';

import '../controllers/hotel_details_controller.dart';

class HotelDetailsView extends GetView<HotelDetailsController> {
  const HotelDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<List<Room>>(
      future: Get.find<AppDataBase>().getRoomsByHotelId(controller.hotel.id),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Room>? rooms = snapshot.data;
          return SizedBox(
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: Get.height * 0.4,
                      width: double.infinity,
                      child: GestureDetector(
                        onTap: () {
                          Get.dialog(
                            Dialog(
                              backgroundColor:
                                  ColorsManger.black.withOpacity(.1),
                              child: SizedBox(
                                height: Get.height * 0.4,
                                width: Get.width * 0.8,
                                child: ParallexImage(
                                  image: NetworkImage(
                                    controller.hotel.image,
                                  ),
                                  height: Get.height,
                                  width: Get.width,
                                ),
                              ),
                            ),
                          );
                        },
                        child: Image.network(
                          controller.hotel.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    //back button
                    Positioned(
                      top: Get.height * 0.05,
                      left: 10,
                      child: IconButton(
                        onPressed: () {
                          Get.offAll(() => const HomeView());
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          size: 30,
                          color: ColorsManger.primary,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  controller.hotel.name,
                  style: getBoldTextStyle(
                      fontSize: 30, color: ColorsManger.primary),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  controller.hotel.address,
                  style: getRegularTextStyle(
                      fontSize: 20, color: ColorsManger.primary),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Rooms',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.6,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    scrollDirection: Axis.vertical,
                    itemCount: rooms?.length ?? 0,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return RoomCard(
                        room: rooms![index],
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    ));
  }
}

class RoomCard extends StatelessWidget {
  final Room room;

  const RoomCard({
    required this.room,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.dialog(RoomInfoDialog(
          room: room,
        ));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, bottom: 15),
        child: Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.5),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(10, 20),
                  blurRadius: 10,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.05)),
            ],
          ),
          child: Column(
            children: [
              Expanded(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(AppBorderRadius.radius8),
                child: ParallexImage(
                  image: NetworkImage(
                    room.image,
                  ),
                  height: 300,
                  width: 300,
                ),
              )),
              Text(room.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              const SizedBox(
                height: 5,
              ),
              Text(
                room.type,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 12),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(room.price.toString() + ' \$',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: ColorsManger.success,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
