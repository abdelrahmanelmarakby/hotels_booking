import 'package:easy_table/easy_table.dart';
import 'package:get/get.dart';
import 'package:hotels_booking/app/data/local_data_source/sqlite_database.dart';

class DashboardController extends GetxController {
  final String role = Get.arguments;
  EasyTableModel<Hotel>? hotelsModel;
  EasyTableModel<Room>? roomsModel;
  EasyTableModel<User>? usersModel;
  EasyTableModel<Client>? clientsModel;
  EasyTableModel<Booking>? bookingsModel;
  EasyTableModel<Payment>? paymentModels;
  Future<List<Hotel>>? getAllhotels;
  Future<List<Room>>? getAllrooms;
  Future<List<User>>? getAllusers;
  Future<List<Client>>? getAllclients;
  Future<List<Booking>>? getAllbookings;
  Future<List<Payment>>? getAllpayments;

  @override
  void onInit() {
    super.onInit();

    getAllhotels = Get.find<AppDataBase>().getAllHotels();
    getAllrooms = Get.find<AppDataBase>().getAllRooms();
    getAllusers = Get.find<AppDataBase>().getAllUsers();
    getAllclients = Get.find<AppDataBase>().getAllClients();
    getAllbookings = Get.find<AppDataBase>().getAllBookings();
    getAllpayments = Get.find<AppDataBase>().getAllPayments();
  }
}
