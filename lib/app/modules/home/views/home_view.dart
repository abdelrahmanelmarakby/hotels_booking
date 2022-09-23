import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hotels_booking/app/data/local_data_source/sqlite_database.dart';
import 'package:hotels_booking/app/routes/app_pages.dart';
import 'package:hotels_booking/core/resourses/color_manager.dart';
import 'package:hotels_booking/core/resourses/font_manager.dart';
import 'package:hotels_booking/core/resourses/font_styles_manager.dart';
import 'package:hotels_booking/core/resourses/size_manager.dart';

import 'package:sensors_plus/sensors_plus.dart';
import '../controllers/home_controller.dart';

import 'dart:ui';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: AppSize.size20),
                ElevatedButton(
                  onPressed: () async => controller.generateHotels(),
                  child: const Text('Insert 100 Hotels'),
                ),
                const SizedBox(width: AppSize.size20),
                ElevatedButton(
                  onPressed: () async => controller.generateBookings(),
                  child: const Text('Insert 100 Booking'),
                ),
                const SizedBox(width: AppSize.size20),
                ElevatedButton(
                  onPressed: () async => controller.generateRooms(),
                  child: const Text('Insert 100 Room'),
                ),
                const SizedBox(width: AppSize.size20),
                ElevatedButton(
                  onPressed: () async => controller.generateUsers(),
                  child: const Text('Insert 100 User'),
                ),
                const SizedBox(width: AppSize.size20),
                ElevatedButton(
                  onPressed: () async => controller.generateClients(),
                  child: const Text('Insert 100 Client'),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSize.size16),
          Expanded(
            child: StreamBuilder<List<Hotel>>(
              stream: Get.find<AppDataBase>().watchAllHotels(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final hotels = snapshot.data;
                  return GridView.builder(
                    shrinkWrap: false,
                    itemCount: hotels!.length,
                    itemBuilder: (context, index) {
                      final hotel = hotels[index];
                      return HotelCard(
                        hotel: hotel,
                      );
                    },
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                    ),
                  );
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
          ),
          const SizedBox(height: AppSize.size16),
        ],
      ),
    );
  }
}

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  AppBarWidget({Key? key})
      : preferredSize = const Size.fromHeight(64.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Initium Hotels',
          style: getMediumTextStyle(
            fontSize: FontSize.xxlarge,
          )),
      centerTitle: true,
      leading: Padding(
          padding: const EdgeInsets.all(AppPadding.padding8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppBorderRadius.radius12),
            child: Image.network(
                "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80"),
          )),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.search,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.bell,
            color: Colors.white,
          ),
        ),
      ],
      automaticallyImplyLeading: true,
    );
  }
}

class HotelCard extends StatelessWidget {
  final Hotel hotel;

  const HotelCard({
    required this.hotel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.HOTEL_DETAILS, arguments: hotel);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, bottom: 15),
        child: Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.1),
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
                child: Image.network(
                  hotel.image,
                  fit: BoxFit.cover,
                ),
              )),
              Text(hotel.name,
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
                hotel.address,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 12),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    hotel.rating,
                    (index) => const Icon(
                          Icons.star_rounded,
                          color: Colors.orange,
                          size: 15,
                        )),
              ),
              Text('${hotel.price} \$',
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

class ParallexImage extends StatefulWidget {
  const ParallexImage({
    Key? key,
    required this.image,
    this.height = 100,
    this.width = 100,
  }) : super(key: key);
  final ImageProvider image;
  final double height;
  final double width;

  @override
  State<ParallexImage> createState() => _ParallexImageState();
}

class _ParallexImageState extends State<ParallexImage> {
  double initX = 0.0, initY = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          StreamBuilder<GyroscopeEvent>(
              stream: SensorsPlatform.instance.gyroscopeEvents,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  if (snapshot.data!.y.abs() > 0.0) {
                    initX = initX + (snapshot.data!.y);
                  }
                  if (snapshot.data!.x.abs() > 0.0) {
                    initY = initY + (snapshot.data!.x);
                  }
                }
                return Positioned(
                  left: 5 - initX,
                  right: 5 + initX,
                  top: 5 - initY,
                  bottom: 5 + initY,
                  child: Center(
                    child: Stack(
                      children: [
                        Container(
                          width: widget.height,
                          height: widget.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                isAntiAlias: true,
                                opacity: 0.8,
                                image: widget.image,
                                colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(.0),
                                    BlendMode.srcOver),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue.withOpacity(0.1)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
          Positioned(
            left: 10 + initX,
            right: 10 - initX,
            top: 10 + initY,
            bottom: 10 - initY,
            child: Center(
              child: Container(
                width: widget.width,
                height: widget.height,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: .4),
                  image:
                      DecorationImage(image: widget.image, fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
