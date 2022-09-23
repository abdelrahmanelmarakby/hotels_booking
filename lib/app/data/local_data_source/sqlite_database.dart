import 'dart:io';

import 'package:drift/native.dart';
import 'package:get/get.dart' hide Value;
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:drift/drift.dart';
part 'sqlite_database.g.dart';

@DataClassName("Hotel")
class Hotels extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get address => text()();
  TextColumn get description => text()();
  TextColumn get image => text()();
  IntColumn get rating => integer()();
  TextColumn get price => text()();
  IntColumn get roomsCount => integer()();
  IntColumn get bookingsCount => integer()();
  TextColumn get hotelStatus => text()();
}

@DataClassName("Room")
class Rooms extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get description => text()();
  TextColumn get image => text()();
  TextColumn get price => text()();
  TextColumn get roomStatus => text()();
  TextColumn get type => text()();
  IntColumn get hotelId => integer().references(Hotels, #id)();
  IntColumn get currentReservation => integer().references(Clients, #id)();
}

@DataClassName("Booking")
class Bookings extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get description => text()();
  TextColumn get image => text()();
  TextColumn get price => text()();
  TextColumn get bookingStatus => text()();
  DateTimeColumn get expectedCheckIn => dateTime()();
  DateTimeColumn get expectedCheckOut => dateTime()();
  DateTimeColumn get checkIn => dateTime()();
  DateTimeColumn get checkOut => dateTime()();
  IntColumn get hotelId => integer().references(Hotels, #id)();
  IntColumn get roomId => integer().references(Rooms, #id)();
  IntColumn get clientId => integer().references(Clients, #id)();
}

@DataClassName("Payment")
class Payments extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get description => text()();
  TextColumn get image => text()();
  TextColumn get price => text()();
  TextColumn get paymentStatus => text()();
  DateTimeColumn get paymentDate => dateTime()();
  IntColumn get bookingId => integer().references(Bookings, #id)();
}

@DataClassName("User")
class Users extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get email => text()();
  TextColumn get password => text()();
  TextColumn get phone => text()();
  TextColumn get image => text()();
  TextColumn get role => text()();
  TextColumn get status => text()();
}

@DataClassName("Client")
class Clients extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get email => text()();
  TextColumn get password => text()();
  TextColumn get phone => text()();
  TextColumn get image => text()();
  TextColumn get status => text()();
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(
  tables: [
    Hotels,
    Bookings,
    Users,
    Payments,
    Clients,
    Rooms,
  ],
)
class AppDataBase extends _$AppDataBase {
  AppDataBase() : super(_openConnection());

  @override
  // TODO: implement schemaVersion
  int get schemaVersion => 1;

  //READ
  Future<List<Hotel>> getAllHotels() => select(hotels).get();
  Stream<List<Hotel>> watchAllHotels() => select(hotels).watch();
  //INSERT
  Future insertHotel(Hotel hotel) => into(hotels).insert(hotel);
  //Update
  Future updateHotel(Hotel hotel) => update(hotels).replace(hotel);
  //Delete
  Future deleteHotel(Hotel hotel) => delete(hotels).delete(hotel);
  Future deleteAllHotels() => delete(hotels).go();

  //READ
  Future<List<Booking>> getAllBookings() => select(bookings).get();
  Stream<List<Booking>> watchAllBookings() => select(bookings).watch();
  //INSERT
  Future insertBooking(Booking booking) => into(bookings).insert(booking);
  //Update
  Future updateBooking(Booking booking) => update(bookings).replace(booking);
  //Delete
  Future deleteBooking(Booking booking) => delete(bookings).delete(booking);

  Future deleteAllBookings() => delete(bookings).go();

  //READ
  Future<List<Payment>> getAllPayments() => select(payments).get();
  Stream<List<Payment>> watchAllPayments() => select(payments).watch();
  //INSERT
  Future insertPayment(Payment payment) => into(payments).insert(payment);
  //Update
  Future updatePayment(Payment payment) => update(payments).replace(payment);
  //Delete
  Future deletePayment(Payment payment) => delete(payments).delete(payment);
  Future deleteAllPayments() => delete(payments).go();

  //READ
  Future<List<User>> getAllUsers() => select(users).get();
  Stream<List<User>> watchAllUsers() => select(users).watch();
  //INSERT
  Future insertUser(User user) => into(users).insert(user);
  //Update
  Future updateUser(User user) => update(users).replace(user);
  //Delete
  Future deleteUser(User user) => delete(users).delete(user);
  Future deleteAllUsers() => delete(users).go();
  //Login User
  Future<User?> loginUser(String email, String password) {
    return (select(users)
          ..where((tbl) => tbl.email.equals(email))
          ..where((tbl) => tbl.password.equals(password)))
        .getSingleOrNull();
  }

  //READ
  Future<List<Client>> getAllClients() => select(clients).get();
  Stream<List<Client>> watchAllClients() => select(clients).watch();
  //INSERT
  Future insertClient(Client client) => into(clients).insert(client);
  //Update
  Future updateClient(Client client) => update(clients).replace(client);
  //Delete
  Future deleteClient(Client client) => delete(clients).delete(client);
  Future deleteAllClients() => delete(clients).go();
  //Search Client by ID
  Future<List<Client>> getClientById(int id) async {
    return (select(clients)..where((tbl) => tbl.id.equals(id))).get();
  }

  //READ
  Future<List<Room>> getAllRooms() => select(rooms).get();
  Stream<List<Room>> watchAllRooms() => select(rooms).watch();
  //INSERT
  Future insertRoom(Room room) => into(rooms).insert(room);
  //Update
  Future updateRoom(Room room) => update(rooms).replace(room);
  //Delete
  Future deleteRoom(Room room) => delete(rooms).delete(room);
  Future deleteAllRooms() => delete(rooms).go();
  Future<List<Hotel>> getHotelById(int id) async {
    return (select(hotels)..where((tbl) => tbl.id.equals(id))).get();
  }

  Future<List<Room>> getRoomsByHotelId(int hotelId) async {
    return (select(rooms)..where((tbl) => tbl.hotelId.equals(hotelId))).get();
  }
}
