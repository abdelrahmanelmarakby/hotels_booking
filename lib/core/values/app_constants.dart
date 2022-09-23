//Network global data
import 'package:hotels_booking/app/data/local_data_source/sqlite_database.dart';

class AppGlobals {
  User? currentUser;
}

class AppConstants {
  AppConstants._();
  static const List<String> userRoles = [
    'Hotel Owner',
    'Client',
    'Hotel Manager',
    'Hotel Finance',
    'Hotel Receptionist',
    'Hotel IT',
  ];
  static const List<String> status = [
    "Available",
    "Reserved",
    "Occupied",
    "Under maintenance",
  ];
  static const List<String> roomType = [
    "single",
    "double",
    "Suite",
  ];
  static const List<String> hotelNames = [
    "Southern Phoenix Resort",
    "Winter Peaks Resort",
    "Noble Paradise Resort & Spa",
    "Malachite Wolf Hotel",
    "Tranquil Dome Hotel & Spa",
    "Scarlet Sanctuary Resort",
    "Icecap Hotel",
    "Sanctuary Hotel",
    "Obelisk Hotel & Spa",
    "Radiance Resort",
    "Dual Comfort Hotel & Spa",
    "Onyx Estate Motel",
    "Snowy Legacy Resort",
    "Rose Canopy Resort",
    "Elder Circus Hotel",
    "Primal Spring Motel",
    "Smile Hotel",
    "Golden Nugget Resort",
    "Muse Hotel",
    "Rainbow Hotel & Spa",
  ];
  static const List<String> hotelImages = [
    "https://images.unsplash.com/photo-1455587734955-081b22074882?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60",
    "https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60",
    "https://images.unsplash.com/photo-1564501049412-61c2a3083791?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
    "https://images.unsplash.com/photo-1445019980597-93fa8acb246c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
    "https://images.unsplash.com/photo-1519449556851-5720b33024e7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
    "https://images.unsplash.com/photo-1541971875076-8f970d573be6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
    "https://images.unsplash.com/photo-1578683010236-d716f9a3f461?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
    "https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzF8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
    "https://images.unsplash.com/photo-1519690889869-e705e59f72e1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
    "https://images.unsplash.com/photo-1521783988139-89397d761dce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
    "https://images.unsplash.com/photo-1549294413-26f195200c16?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDN8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
    "https://images.unsplash.com/photo-1537572263231-4314a30d444f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDl8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
    "https://images.unsplash.com/photo-1535827841776-24afc1e255ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTR8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
    "https://images.unsplash.com/photo-1571896349842-33c89424de2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTd8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
    "https://images.unsplash.com/photo-1564574685150-74a84d02d695?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Njl8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60"
  ];
}
