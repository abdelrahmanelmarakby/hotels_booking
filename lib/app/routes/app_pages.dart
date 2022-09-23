import 'package:get/get.dart';

import '../modules/book_screen/bindings/book_screen_binding.dart';
import '../modules/book_screen/views/book_screen_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/hotel_details/bindings/hotel_details_binding.dart';
import '../modules/hotel_details/views/hotel_details_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOTEL_DETAILS,
      page: () => const HotelDetailsView(),
      binding: HotelDetailsBinding(),
    ),
    GetPage(
      name: _Paths.BOOK_SCREEN,
      page: () => const BookScreenView(),
      binding: BookScreenBinding(),
    ),
  ];
}
