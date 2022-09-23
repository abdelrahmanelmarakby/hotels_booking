import 'package:easy_table/easy_table.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hotels_booking/app/data/local_data_source/sqlite_database.dart';
import 'package:hotels_booking/core/resourses/color_manager.dart';
import 'package:hotels_booking/core/resourses/font_styles_manager.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('DashboardView'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text("Your current Role is ${controller.role}"),
              const SizedBox(
                height: 20,
              ),
              HotelsTable(
                controller: controller,
              ),
              RoomsTable(
                controller: controller,
              ),
              Column(
                children: [
                  Text(
                    "Users",
                    style: getMediumTextStyle(color: ColorsManger.primary),
                  ),
                  FutureBuilder<List<User>>(
                    future: controller.getAllusers,
                    builder: (context, snapshot) {
                      if (snapshot.hasData && controller.role != "Client") {
                        final users = snapshot.data;
                        controller.usersModel =
                            EasyTableModel<User>(rows: users!, columns: [
                          EasyTableColumn(
                              name: 'id', intValue: (row) => row.id),
                          EasyTableColumn(
                              name: 'Name', stringValue: (row) => row.name),
                          EasyTableColumn(
                              name: 'phone', stringValue: (row) => row.phone),
                          EasyTableColumn(
                              name: 'role', stringValue: (row) => row.role),
                          EasyTableColumn(
                              name: 'status', stringValue: (row) => row.status),
                          EasyTableColumn(
                              name: 'email', stringValue: (row) => row.email),
                        ]);

                        return SizedBox(
                          height: Get.height / 4,
                          child: EasyTable(
                            controller.usersModel,
                            columnsFit: true,
                            multiSort: true,
                          ),
                        );
                      } else {
                        return const Center(
                            child: Text(
                                "You don't have the permission to see this data "));
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Clients",
                    style: getMediumTextStyle(color: ColorsManger.primary),
                  ),
                  FutureBuilder<List<Client>>(
                    future: controller.getAllclients,
                    builder: (context, snapshot) {
                      if (snapshot.hasData && controller.role != "Client") {
                        final clients = snapshot.data;
                        controller.clientsModel =
                            EasyTableModel<Client>(rows: clients!, columns: [
                          EasyTableColumn(
                              name: 'id', intValue: (row) => row.id),
                          EasyTableColumn(
                              name: 'Name', stringValue: (row) => row.name),
                          EasyTableColumn(
                              name: 'phone', stringValue: (row) => row.phone),
                          EasyTableColumn(
                              name: 'status', stringValue: (row) => row.status),
                          EasyTableColumn(
                              name: 'email', stringValue: (row) => row.email),
                        ]);

                        return SizedBox(
                          height: Get.height / 4,
                          child: EasyTable(
                            controller.clientsModel,
                            columnsFit: true,
                            multiSort: true,
                          ),
                        );
                      } else {
                        return const Center(
                            child: Text(
                                "You don't have the permission to see this data "));
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Bookings",
                    style: getMediumTextStyle(color: ColorsManger.primary),
                  ),
                  FutureBuilder<List<Booking>>(
                    future: controller.getAllbookings,
                    builder: (context, snapshot) {
                      if (snapshot.hasData && controller.role != "Client") {
                        final bookings = snapshot.data;
                        controller.bookingsModel =
                            EasyTableModel<Booking>(rows: bookings!, columns: [
                          EasyTableColumn(
                              name: 'id', intValue: (row) => row.id),
                          EasyTableColumn(
                              name: 'Name', stringValue: (row) => row.name),
                          EasyTableColumn(
                              name: 'Expected Check In',
                              stringValue: (row) =>
                                  row.expectedCheckIn.toString()),
                          EasyTableColumn(
                            name: 'Expected Check In',
                            stringValue: (row) => row.checkOut.toString(),
                          ),
                          EasyTableColumn(
                              name: 'clint', intValue: (row) => row.clientId),
                          EasyTableColumn(
                              name: 'price',
                              intValue: (row) => int.parse(row.price)),
                        ]);

                        return SizedBox(
                          height: Get.height / 4,
                          child: EasyTable(
                            controller.bookingsModel,
                            columnsFit: true,
                            multiSort: true,
                          ),
                        );
                      } else {
                        return const Center(
                            child: Text(
                                "You don't have the permission to see this data "));
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class RoomsTable extends StatelessWidget {
  const RoomsTable({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final DashboardController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Rooms",
          style: getMediumTextStyle(color: ColorsManger.primary),
        ),
        FutureBuilder<List<Room>>(
          future: controller.getAllrooms,
          builder: (context, snapshot) {
            if (snapshot.hasData && controller.role != "Client") {
              final rooms = snapshot.data;
              controller.roomsModel =
                  EasyTableModel<Room>(rows: rooms!, columns: [
                EasyTableColumn(name: 'id', intValue: (row) => row.id),
                EasyTableColumn(name: 'Name', stringValue: (row) => row.name),
                EasyTableColumn(
                    name: 'current Reservation',
                    intValue: (row) => row.currentReservation),
                EasyTableColumn(
                    name: 'description', stringValue: (row) => row.description),
                EasyTableColumn(
                    name: 'hotel id', intValue: (row) => row.hotelId),
                EasyTableColumn(
                    name: 'price', intValue: (row) => int.parse(row.price)),
              ]);

              return SizedBox(
                height: Get.height / 4,
                child: EasyTable(
                  controller.roomsModel,
                  columnsFit: true,
                  multiSort: true,
                ),
              );
            } else {
              return const Center(
                  child:
                      Text("You don't have the permission to see this data "));
            }
          },
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class HotelsTable extends StatelessWidget {
  const HotelsTable({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final DashboardController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Hotels",
          style: getMediumTextStyle(color: ColorsManger.primary),
        ),
        FutureBuilder<List<Hotel>>(
          future: controller.getAllhotels,
          builder: (context, snapshot) {
            if (snapshot.hasData && controller.role != "Client") {
              final hotels = snapshot.data;
              controller.hotelsModel =
                  EasyTableModel<Hotel>(rows: hotels!, columns: [
                EasyTableColumn(name: 'id', intValue: (row) => row.id),
                EasyTableColumn(name: 'Name', stringValue: (row) => row.name),
                EasyTableColumn(
                    name: 'Address', stringValue: (row) => row.address),
                EasyTableColumn(
                    name: 'description', stringValue: (row) => row.description),
                EasyTableColumn(
                    name: 'status', stringValue: (row) => row.hotelStatus),
                EasyTableColumn(
                    name: 'price', intValue: (row) => int.parse(row.price)),
              ]);

              return SizedBox(
                height: Get.height / 4,
                child: EasyTable(
                  controller.hotelsModel,
                  columnsFit: true,
                  multiSort: true,
                ),
              );
            } else {
              return const Center(
                  child:
                      Text("You don't have the permission to see this data "));
            }
          },
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
