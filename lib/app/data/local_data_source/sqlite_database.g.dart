// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sqlite_database.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Hotel extends DataClass implements Insertable<Hotel> {
  final int id;
  final String name;
  final String address;
  final String description;
  final String image;
  final int rating;
  final String price;
  final int roomsCount;
  final int bookingsCount;
  final String hotelStatus;
  const Hotel(
      {required this.id,
      required this.name,
      required this.address,
      required this.description,
      required this.image,
      required this.rating,
      required this.price,
      required this.roomsCount,
      required this.bookingsCount,
      required this.hotelStatus});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['address'] = Variable<String>(address);
    map['description'] = Variable<String>(description);
    map['image'] = Variable<String>(image);
    map['rating'] = Variable<int>(rating);
    map['price'] = Variable<String>(price);
    map['rooms_count'] = Variable<int>(roomsCount);
    map['bookings_count'] = Variable<int>(bookingsCount);
    map['hotel_status'] = Variable<String>(hotelStatus);
    return map;
  }

  HotelsCompanion toCompanion(bool nullToAbsent) {
    return HotelsCompanion(
      id: Value(id),
      name: Value(name),
      address: Value(address),
      description: Value(description),
      image: Value(image),
      rating: Value(rating),
      price: Value(price),
      roomsCount: Value(roomsCount),
      bookingsCount: Value(bookingsCount),
      hotelStatus: Value(hotelStatus),
    );
  }

  factory Hotel.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Hotel(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      address: serializer.fromJson<String>(json['address']),
      description: serializer.fromJson<String>(json['description']),
      image: serializer.fromJson<String>(json['image']),
      rating: serializer.fromJson<int>(json['rating']),
      price: serializer.fromJson<String>(json['price']),
      roomsCount: serializer.fromJson<int>(json['roomsCount']),
      bookingsCount: serializer.fromJson<int>(json['bookingsCount']),
      hotelStatus: serializer.fromJson<String>(json['hotelStatus']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'address': serializer.toJson<String>(address),
      'description': serializer.toJson<String>(description),
      'image': serializer.toJson<String>(image),
      'rating': serializer.toJson<int>(rating),
      'price': serializer.toJson<String>(price),
      'roomsCount': serializer.toJson<int>(roomsCount),
      'bookingsCount': serializer.toJson<int>(bookingsCount),
      'hotelStatus': serializer.toJson<String>(hotelStatus),
    };
  }

  Hotel copyWith(
          {int? id,
          String? name,
          String? address,
          String? description,
          String? image,
          int? rating,
          String? price,
          int? roomsCount,
          int? bookingsCount,
          String? hotelStatus}) =>
      Hotel(
        id: id ?? this.id,
        name: name ?? this.name,
        address: address ?? this.address,
        description: description ?? this.description,
        image: image ?? this.image,
        rating: rating ?? this.rating,
        price: price ?? this.price,
        roomsCount: roomsCount ?? this.roomsCount,
        bookingsCount: bookingsCount ?? this.bookingsCount,
        hotelStatus: hotelStatus ?? this.hotelStatus,
      );
  @override
  String toString() {
    return (StringBuffer('Hotel(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('address: $address, ')
          ..write('description: $description, ')
          ..write('image: $image, ')
          ..write('rating: $rating, ')
          ..write('price: $price, ')
          ..write('roomsCount: $roomsCount, ')
          ..write('bookingsCount: $bookingsCount, ')
          ..write('hotelStatus: $hotelStatus')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, address, description, image, rating,
      price, roomsCount, bookingsCount, hotelStatus);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Hotel &&
          other.id == this.id &&
          other.name == this.name &&
          other.address == this.address &&
          other.description == this.description &&
          other.image == this.image &&
          other.rating == this.rating &&
          other.price == this.price &&
          other.roomsCount == this.roomsCount &&
          other.bookingsCount == this.bookingsCount &&
          other.hotelStatus == this.hotelStatus);
}

class HotelsCompanion extends UpdateCompanion<Hotel> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> address;
  final Value<String> description;
  final Value<String> image;
  final Value<int> rating;
  final Value<String> price;
  final Value<int> roomsCount;
  final Value<int> bookingsCount;
  final Value<String> hotelStatus;
  const HotelsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.address = const Value.absent(),
    this.description = const Value.absent(),
    this.image = const Value.absent(),
    this.rating = const Value.absent(),
    this.price = const Value.absent(),
    this.roomsCount = const Value.absent(),
    this.bookingsCount = const Value.absent(),
    this.hotelStatus = const Value.absent(),
  });
  HotelsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String address,
    required String description,
    required String image,
    required int rating,
    required String price,
    required int roomsCount,
    required int bookingsCount,
    required String hotelStatus,
  })  : name = Value(name),
        address = Value(address),
        description = Value(description),
        image = Value(image),
        rating = Value(rating),
        price = Value(price),
        roomsCount = Value(roomsCount),
        bookingsCount = Value(bookingsCount),
        hotelStatus = Value(hotelStatus);
  static Insertable<Hotel> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? address,
    Expression<String>? description,
    Expression<String>? image,
    Expression<int>? rating,
    Expression<String>? price,
    Expression<int>? roomsCount,
    Expression<int>? bookingsCount,
    Expression<String>? hotelStatus,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (address != null) 'address': address,
      if (description != null) 'description': description,
      if (image != null) 'image': image,
      if (rating != null) 'rating': rating,
      if (price != null) 'price': price,
      if (roomsCount != null) 'rooms_count': roomsCount,
      if (bookingsCount != null) 'bookings_count': bookingsCount,
      if (hotelStatus != null) 'hotel_status': hotelStatus,
    });
  }

  HotelsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? address,
      Value<String>? description,
      Value<String>? image,
      Value<int>? rating,
      Value<String>? price,
      Value<int>? roomsCount,
      Value<int>? bookingsCount,
      Value<String>? hotelStatus}) {
    return HotelsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
      description: description ?? this.description,
      image: image ?? this.image,
      rating: rating ?? this.rating,
      price: price ?? this.price,
      roomsCount: roomsCount ?? this.roomsCount,
      bookingsCount: bookingsCount ?? this.bookingsCount,
      hotelStatus: hotelStatus ?? this.hotelStatus,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (rating.present) {
      map['rating'] = Variable<int>(rating.value);
    }
    if (price.present) {
      map['price'] = Variable<String>(price.value);
    }
    if (roomsCount.present) {
      map['rooms_count'] = Variable<int>(roomsCount.value);
    }
    if (bookingsCount.present) {
      map['bookings_count'] = Variable<int>(bookingsCount.value);
    }
    if (hotelStatus.present) {
      map['hotel_status'] = Variable<String>(hotelStatus.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HotelsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('address: $address, ')
          ..write('description: $description, ')
          ..write('image: $image, ')
          ..write('rating: $rating, ')
          ..write('price: $price, ')
          ..write('roomsCount: $roomsCount, ')
          ..write('bookingsCount: $bookingsCount, ')
          ..write('hotelStatus: $hotelStatus')
          ..write(')'))
        .toString();
  }
}

class $HotelsTable extends Hotels with TableInfo<$HotelsTable, Hotel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HotelsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _addressMeta = const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _ratingMeta = const VerificationMeta('rating');
  @override
  late final GeneratedColumn<int> rating = GeneratedColumn<int>(
      'rating', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<String> price = GeneratedColumn<String>(
      'price', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _roomsCountMeta = const VerificationMeta('roomsCount');
  @override
  late final GeneratedColumn<int> roomsCount = GeneratedColumn<int>(
      'rooms_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _bookingsCountMeta =
      const VerificationMeta('bookingsCount');
  @override
  late final GeneratedColumn<int> bookingsCount = GeneratedColumn<int>(
      'bookings_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _hotelStatusMeta =
      const VerificationMeta('hotelStatus');
  @override
  late final GeneratedColumn<String> hotelStatus = GeneratedColumn<String>(
      'hotel_status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        address,
        description,
        image,
        rating,
        price,
        roomsCount,
        bookingsCount,
        hotelStatus
      ];
  @override
  String get aliasedName => _alias ?? 'hotels';
  @override
  String get actualTableName => 'hotels';
  @override
  VerificationContext validateIntegrity(Insertable<Hotel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('rating')) {
      context.handle(_ratingMeta,
          rating.isAcceptableOrUnknown(data['rating']!, _ratingMeta));
    } else if (isInserting) {
      context.missing(_ratingMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('rooms_count')) {
      context.handle(
          _roomsCountMeta,
          roomsCount.isAcceptableOrUnknown(
              data['rooms_count']!, _roomsCountMeta));
    } else if (isInserting) {
      context.missing(_roomsCountMeta);
    }
    if (data.containsKey('bookings_count')) {
      context.handle(
          _bookingsCountMeta,
          bookingsCount.isAcceptableOrUnknown(
              data['bookings_count']!, _bookingsCountMeta));
    } else if (isInserting) {
      context.missing(_bookingsCountMeta);
    }
    if (data.containsKey('hotel_status')) {
      context.handle(
          _hotelStatusMeta,
          hotelStatus.isAcceptableOrUnknown(
              data['hotel_status']!, _hotelStatusMeta));
    } else if (isInserting) {
      context.missing(_hotelStatusMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Hotel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Hotel(
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      address: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}address'])!,
      description: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      image: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}image'])!,
      rating: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}rating'])!,
      price: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}price'])!,
      roomsCount: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}rooms_count'])!,
      bookingsCount: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}bookings_count'])!,
      hotelStatus: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}hotel_status'])!,
    );
  }

  @override
  $HotelsTable createAlias(String alias) {
    return $HotelsTable(attachedDatabase, alias);
  }
}

class Client extends DataClass implements Insertable<Client> {
  final int id;
  final String name;
  final String email;
  final String password;
  final String phone;
  final String image;
  final String status;
  const Client(
      {required this.id,
      required this.name,
      required this.email,
      required this.password,
      required this.phone,
      required this.image,
      required this.status});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['email'] = Variable<String>(email);
    map['password'] = Variable<String>(password);
    map['phone'] = Variable<String>(phone);
    map['image'] = Variable<String>(image);
    map['status'] = Variable<String>(status);
    return map;
  }

  ClientsCompanion toCompanion(bool nullToAbsent) {
    return ClientsCompanion(
      id: Value(id),
      name: Value(name),
      email: Value(email),
      password: Value(password),
      phone: Value(phone),
      image: Value(image),
      status: Value(status),
    );
  }

  factory Client.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Client(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String>(json['email']),
      password: serializer.fromJson<String>(json['password']),
      phone: serializer.fromJson<String>(json['phone']),
      image: serializer.fromJson<String>(json['image']),
      status: serializer.fromJson<String>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'email': serializer.toJson<String>(email),
      'password': serializer.toJson<String>(password),
      'phone': serializer.toJson<String>(phone),
      'image': serializer.toJson<String>(image),
      'status': serializer.toJson<String>(status),
    };
  }

  Client copyWith(
          {int? id,
          String? name,
          String? email,
          String? password,
          String? phone,
          String? image,
          String? status}) =>
      Client(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        password: password ?? this.password,
        phone: phone ?? this.phone,
        image: image ?? this.image,
        status: status ?? this.status,
      );
  @override
  String toString() {
    return (StringBuffer('Client(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('phone: $phone, ')
          ..write('image: $image, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, email, password, phone, image, status);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Client &&
          other.id == this.id &&
          other.name == this.name &&
          other.email == this.email &&
          other.password == this.password &&
          other.phone == this.phone &&
          other.image == this.image &&
          other.status == this.status);
}

class ClientsCompanion extends UpdateCompanion<Client> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> email;
  final Value<String> password;
  final Value<String> phone;
  final Value<String> image;
  final Value<String> status;
  const ClientsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.password = const Value.absent(),
    this.phone = const Value.absent(),
    this.image = const Value.absent(),
    this.status = const Value.absent(),
  });
  ClientsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String email,
    required String password,
    required String phone,
    required String image,
    required String status,
  })  : name = Value(name),
        email = Value(email),
        password = Value(password),
        phone = Value(phone),
        image = Value(image),
        status = Value(status);
  static Insertable<Client> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? email,
    Expression<String>? password,
    Expression<String>? phone,
    Expression<String>? image,
    Expression<String>? status,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (password != null) 'password': password,
      if (phone != null) 'phone': phone,
      if (image != null) 'image': image,
      if (status != null) 'status': status,
    });
  }

  ClientsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? email,
      Value<String>? password,
      Value<String>? phone,
      Value<String>? image,
      Value<String>? status}) {
    return ClientsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      phone: phone ?? this.phone,
      image: image ?? this.image,
      status: status ?? this.status,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClientsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('phone: $phone, ')
          ..write('image: $image, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }
}

class $ClientsTable extends Clients with TableInfo<$ClientsTable, Client> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClientsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _passwordMeta = const VerificationMeta('password');
  @override
  late final GeneratedColumn<String> password = GeneratedColumn<String>(
      'password', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, email, password, phone, image, status];
  @override
  String get aliasedName => _alias ?? 'clients';
  @override
  String get actualTableName => 'clients';
  @override
  VerificationContext validateIntegrity(Insertable<Client> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password']!, _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Client map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Client(
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      email: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      password: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}password'])!,
      phone: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}phone'])!,
      image: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}image'])!,
      status: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
    );
  }

  @override
  $ClientsTable createAlias(String alias) {
    return $ClientsTable(attachedDatabase, alias);
  }
}

class Room extends DataClass implements Insertable<Room> {
  final int id;
  final String name;
  final String description;
  final String image;
  final String price;
  final String roomStatus;
  final String type;
  final int hotelId;
  final int currentReservation;
  const Room(
      {required this.id,
      required this.name,
      required this.description,
      required this.image,
      required this.price,
      required this.roomStatus,
      required this.type,
      required this.hotelId,
      required this.currentReservation});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['description'] = Variable<String>(description);
    map['image'] = Variable<String>(image);
    map['price'] = Variable<String>(price);
    map['room_status'] = Variable<String>(roomStatus);
    map['type'] = Variable<String>(type);
    map['hotel_id'] = Variable<int>(hotelId);
    map['current_reservation'] = Variable<int>(currentReservation);
    return map;
  }

  RoomsCompanion toCompanion(bool nullToAbsent) {
    return RoomsCompanion(
      id: Value(id),
      name: Value(name),
      description: Value(description),
      image: Value(image),
      price: Value(price),
      roomStatus: Value(roomStatus),
      type: Value(type),
      hotelId: Value(hotelId),
      currentReservation: Value(currentReservation),
    );
  }

  factory Room.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Room(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      image: serializer.fromJson<String>(json['image']),
      price: serializer.fromJson<String>(json['price']),
      roomStatus: serializer.fromJson<String>(json['roomStatus']),
      type: serializer.fromJson<String>(json['type']),
      hotelId: serializer.fromJson<int>(json['hotelId']),
      currentReservation: serializer.fromJson<int>(json['currentReservation']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'image': serializer.toJson<String>(image),
      'price': serializer.toJson<String>(price),
      'roomStatus': serializer.toJson<String>(roomStatus),
      'type': serializer.toJson<String>(type),
      'hotelId': serializer.toJson<int>(hotelId),
      'currentReservation': serializer.toJson<int>(currentReservation),
    };
  }

  Room copyWith(
          {int? id,
          String? name,
          String? description,
          String? image,
          String? price,
          String? roomStatus,
          String? type,
          int? hotelId,
          int? currentReservation}) =>
      Room(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        image: image ?? this.image,
        price: price ?? this.price,
        roomStatus: roomStatus ?? this.roomStatus,
        type: type ?? this.type,
        hotelId: hotelId ?? this.hotelId,
        currentReservation: currentReservation ?? this.currentReservation,
      );
  @override
  String toString() {
    return (StringBuffer('Room(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('image: $image, ')
          ..write('price: $price, ')
          ..write('roomStatus: $roomStatus, ')
          ..write('type: $type, ')
          ..write('hotelId: $hotelId, ')
          ..write('currentReservation: $currentReservation')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, description, image, price,
      roomStatus, type, hotelId, currentReservation);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Room &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.image == this.image &&
          other.price == this.price &&
          other.roomStatus == this.roomStatus &&
          other.type == this.type &&
          other.hotelId == this.hotelId &&
          other.currentReservation == this.currentReservation);
}

class RoomsCompanion extends UpdateCompanion<Room> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> description;
  final Value<String> image;
  final Value<String> price;
  final Value<String> roomStatus;
  final Value<String> type;
  final Value<int> hotelId;
  final Value<int> currentReservation;
  const RoomsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.image = const Value.absent(),
    this.price = const Value.absent(),
    this.roomStatus = const Value.absent(),
    this.type = const Value.absent(),
    this.hotelId = const Value.absent(),
    this.currentReservation = const Value.absent(),
  });
  RoomsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String description,
    required String image,
    required String price,
    required String roomStatus,
    required String type,
    required int hotelId,
    required int currentReservation,
  })  : name = Value(name),
        description = Value(description),
        image = Value(image),
        price = Value(price),
        roomStatus = Value(roomStatus),
        type = Value(type),
        hotelId = Value(hotelId),
        currentReservation = Value(currentReservation);
  static Insertable<Room> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<String>? image,
    Expression<String>? price,
    Expression<String>? roomStatus,
    Expression<String>? type,
    Expression<int>? hotelId,
    Expression<int>? currentReservation,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (image != null) 'image': image,
      if (price != null) 'price': price,
      if (roomStatus != null) 'room_status': roomStatus,
      if (type != null) 'type': type,
      if (hotelId != null) 'hotel_id': hotelId,
      if (currentReservation != null) 'current_reservation': currentReservation,
    });
  }

  RoomsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? description,
      Value<String>? image,
      Value<String>? price,
      Value<String>? roomStatus,
      Value<String>? type,
      Value<int>? hotelId,
      Value<int>? currentReservation}) {
    return RoomsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      image: image ?? this.image,
      price: price ?? this.price,
      roomStatus: roomStatus ?? this.roomStatus,
      type: type ?? this.type,
      hotelId: hotelId ?? this.hotelId,
      currentReservation: currentReservation ?? this.currentReservation,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (price.present) {
      map['price'] = Variable<String>(price.value);
    }
    if (roomStatus.present) {
      map['room_status'] = Variable<String>(roomStatus.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (hotelId.present) {
      map['hotel_id'] = Variable<int>(hotelId.value);
    }
    if (currentReservation.present) {
      map['current_reservation'] = Variable<int>(currentReservation.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RoomsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('image: $image, ')
          ..write('price: $price, ')
          ..write('roomStatus: $roomStatus, ')
          ..write('type: $type, ')
          ..write('hotelId: $hotelId, ')
          ..write('currentReservation: $currentReservation')
          ..write(')'))
        .toString();
  }
}

class $RoomsTable extends Rooms with TableInfo<$RoomsTable, Room> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RoomsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<String> price = GeneratedColumn<String>(
      'price', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _roomStatusMeta = const VerificationMeta('roomStatus');
  @override
  late final GeneratedColumn<String> roomStatus = GeneratedColumn<String>(
      'room_status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _hotelIdMeta = const VerificationMeta('hotelId');
  @override
  late final GeneratedColumn<int> hotelId = GeneratedColumn<int>(
      'hotel_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES hotels (id)');
  final VerificationMeta _currentReservationMeta =
      const VerificationMeta('currentReservation');
  @override
  late final GeneratedColumn<int> currentReservation = GeneratedColumn<int>(
      'current_reservation', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES clients (id)');
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        description,
        image,
        price,
        roomStatus,
        type,
        hotelId,
        currentReservation
      ];
  @override
  String get aliasedName => _alias ?? 'rooms';
  @override
  String get actualTableName => 'rooms';
  @override
  VerificationContext validateIntegrity(Insertable<Room> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('room_status')) {
      context.handle(
          _roomStatusMeta,
          roomStatus.isAcceptableOrUnknown(
              data['room_status']!, _roomStatusMeta));
    } else if (isInserting) {
      context.missing(_roomStatusMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('hotel_id')) {
      context.handle(_hotelIdMeta,
          hotelId.isAcceptableOrUnknown(data['hotel_id']!, _hotelIdMeta));
    } else if (isInserting) {
      context.missing(_hotelIdMeta);
    }
    if (data.containsKey('current_reservation')) {
      context.handle(
          _currentReservationMeta,
          currentReservation.isAcceptableOrUnknown(
              data['current_reservation']!, _currentReservationMeta));
    } else if (isInserting) {
      context.missing(_currentReservationMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Room map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Room(
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      description: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      image: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}image'])!,
      price: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}price'])!,
      roomStatus: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}room_status'])!,
      type: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      hotelId: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}hotel_id'])!,
      currentReservation: attachedDatabase.options.types.read(
          DriftSqlType.int, data['${effectivePrefix}current_reservation'])!,
    );
  }

  @override
  $RoomsTable createAlias(String alias) {
    return $RoomsTable(attachedDatabase, alias);
  }
}

class Booking extends DataClass implements Insertable<Booking> {
  final int id;
  final String name;
  final String description;
  final String image;
  final String price;
  final String bookingStatus;
  final DateTime expectedCheckIn;
  final DateTime expectedCheckOut;
  final DateTime checkIn;
  final DateTime checkOut;
  final int hotelId;
  final int roomId;
  final int clientId;
  const Booking(
      {required this.id,
      required this.name,
      required this.description,
      required this.image,
      required this.price,
      required this.bookingStatus,
      required this.expectedCheckIn,
      required this.expectedCheckOut,
      required this.checkIn,
      required this.checkOut,
      required this.hotelId,
      required this.roomId,
      required this.clientId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['description'] = Variable<String>(description);
    map['image'] = Variable<String>(image);
    map['price'] = Variable<String>(price);
    map['booking_status'] = Variable<String>(bookingStatus);
    map['expected_check_in'] = Variable<DateTime>(expectedCheckIn);
    map['expected_check_out'] = Variable<DateTime>(expectedCheckOut);
    map['check_in'] = Variable<DateTime>(checkIn);
    map['check_out'] = Variable<DateTime>(checkOut);
    map['hotel_id'] = Variable<int>(hotelId);
    map['room_id'] = Variable<int>(roomId);
    map['client_id'] = Variable<int>(clientId);
    return map;
  }

  BookingsCompanion toCompanion(bool nullToAbsent) {
    return BookingsCompanion(
      id: Value(id),
      name: Value(name),
      description: Value(description),
      image: Value(image),
      price: Value(price),
      bookingStatus: Value(bookingStatus),
      expectedCheckIn: Value(expectedCheckIn),
      expectedCheckOut: Value(expectedCheckOut),
      checkIn: Value(checkIn),
      checkOut: Value(checkOut),
      hotelId: Value(hotelId),
      roomId: Value(roomId),
      clientId: Value(clientId),
    );
  }

  factory Booking.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Booking(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      image: serializer.fromJson<String>(json['image']),
      price: serializer.fromJson<String>(json['price']),
      bookingStatus: serializer.fromJson<String>(json['bookingStatus']),
      expectedCheckIn: serializer.fromJson<DateTime>(json['expectedCheckIn']),
      expectedCheckOut: serializer.fromJson<DateTime>(json['expectedCheckOut']),
      checkIn: serializer.fromJson<DateTime>(json['checkIn']),
      checkOut: serializer.fromJson<DateTime>(json['checkOut']),
      hotelId: serializer.fromJson<int>(json['hotelId']),
      roomId: serializer.fromJson<int>(json['roomId']),
      clientId: serializer.fromJson<int>(json['clientId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'image': serializer.toJson<String>(image),
      'price': serializer.toJson<String>(price),
      'bookingStatus': serializer.toJson<String>(bookingStatus),
      'expectedCheckIn': serializer.toJson<DateTime>(expectedCheckIn),
      'expectedCheckOut': serializer.toJson<DateTime>(expectedCheckOut),
      'checkIn': serializer.toJson<DateTime>(checkIn),
      'checkOut': serializer.toJson<DateTime>(checkOut),
      'hotelId': serializer.toJson<int>(hotelId),
      'roomId': serializer.toJson<int>(roomId),
      'clientId': serializer.toJson<int>(clientId),
    };
  }

  Booking copyWith(
          {int? id,
          String? name,
          String? description,
          String? image,
          String? price,
          String? bookingStatus,
          DateTime? expectedCheckIn,
          DateTime? expectedCheckOut,
          DateTime? checkIn,
          DateTime? checkOut,
          int? hotelId,
          int? roomId,
          int? clientId}) =>
      Booking(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        image: image ?? this.image,
        price: price ?? this.price,
        bookingStatus: bookingStatus ?? this.bookingStatus,
        expectedCheckIn: expectedCheckIn ?? this.expectedCheckIn,
        expectedCheckOut: expectedCheckOut ?? this.expectedCheckOut,
        checkIn: checkIn ?? this.checkIn,
        checkOut: checkOut ?? this.checkOut,
        hotelId: hotelId ?? this.hotelId,
        roomId: roomId ?? this.roomId,
        clientId: clientId ?? this.clientId,
      );
  @override
  String toString() {
    return (StringBuffer('Booking(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('image: $image, ')
          ..write('price: $price, ')
          ..write('bookingStatus: $bookingStatus, ')
          ..write('expectedCheckIn: $expectedCheckIn, ')
          ..write('expectedCheckOut: $expectedCheckOut, ')
          ..write('checkIn: $checkIn, ')
          ..write('checkOut: $checkOut, ')
          ..write('hotelId: $hotelId, ')
          ..write('roomId: $roomId, ')
          ..write('clientId: $clientId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      name,
      description,
      image,
      price,
      bookingStatus,
      expectedCheckIn,
      expectedCheckOut,
      checkIn,
      checkOut,
      hotelId,
      roomId,
      clientId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Booking &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.image == this.image &&
          other.price == this.price &&
          other.bookingStatus == this.bookingStatus &&
          other.expectedCheckIn == this.expectedCheckIn &&
          other.expectedCheckOut == this.expectedCheckOut &&
          other.checkIn == this.checkIn &&
          other.checkOut == this.checkOut &&
          other.hotelId == this.hotelId &&
          other.roomId == this.roomId &&
          other.clientId == this.clientId);
}

class BookingsCompanion extends UpdateCompanion<Booking> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> description;
  final Value<String> image;
  final Value<String> price;
  final Value<String> bookingStatus;
  final Value<DateTime> expectedCheckIn;
  final Value<DateTime> expectedCheckOut;
  final Value<DateTime> checkIn;
  final Value<DateTime> checkOut;
  final Value<int> hotelId;
  final Value<int> roomId;
  final Value<int> clientId;
  const BookingsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.image = const Value.absent(),
    this.price = const Value.absent(),
    this.bookingStatus = const Value.absent(),
    this.expectedCheckIn = const Value.absent(),
    this.expectedCheckOut = const Value.absent(),
    this.checkIn = const Value.absent(),
    this.checkOut = const Value.absent(),
    this.hotelId = const Value.absent(),
    this.roomId = const Value.absent(),
    this.clientId = const Value.absent(),
  });
  BookingsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String description,
    required String image,
    required String price,
    required String bookingStatus,
    required DateTime expectedCheckIn,
    required DateTime expectedCheckOut,
    required DateTime checkIn,
    required DateTime checkOut,
    required int hotelId,
    required int roomId,
    required int clientId,
  })  : name = Value(name),
        description = Value(description),
        image = Value(image),
        price = Value(price),
        bookingStatus = Value(bookingStatus),
        expectedCheckIn = Value(expectedCheckIn),
        expectedCheckOut = Value(expectedCheckOut),
        checkIn = Value(checkIn),
        checkOut = Value(checkOut),
        hotelId = Value(hotelId),
        roomId = Value(roomId),
        clientId = Value(clientId);
  static Insertable<Booking> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<String>? image,
    Expression<String>? price,
    Expression<String>? bookingStatus,
    Expression<DateTime>? expectedCheckIn,
    Expression<DateTime>? expectedCheckOut,
    Expression<DateTime>? checkIn,
    Expression<DateTime>? checkOut,
    Expression<int>? hotelId,
    Expression<int>? roomId,
    Expression<int>? clientId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (image != null) 'image': image,
      if (price != null) 'price': price,
      if (bookingStatus != null) 'booking_status': bookingStatus,
      if (expectedCheckIn != null) 'expected_check_in': expectedCheckIn,
      if (expectedCheckOut != null) 'expected_check_out': expectedCheckOut,
      if (checkIn != null) 'check_in': checkIn,
      if (checkOut != null) 'check_out': checkOut,
      if (hotelId != null) 'hotel_id': hotelId,
      if (roomId != null) 'room_id': roomId,
      if (clientId != null) 'client_id': clientId,
    });
  }

  BookingsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? description,
      Value<String>? image,
      Value<String>? price,
      Value<String>? bookingStatus,
      Value<DateTime>? expectedCheckIn,
      Value<DateTime>? expectedCheckOut,
      Value<DateTime>? checkIn,
      Value<DateTime>? checkOut,
      Value<int>? hotelId,
      Value<int>? roomId,
      Value<int>? clientId}) {
    return BookingsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      image: image ?? this.image,
      price: price ?? this.price,
      bookingStatus: bookingStatus ?? this.bookingStatus,
      expectedCheckIn: expectedCheckIn ?? this.expectedCheckIn,
      expectedCheckOut: expectedCheckOut ?? this.expectedCheckOut,
      checkIn: checkIn ?? this.checkIn,
      checkOut: checkOut ?? this.checkOut,
      hotelId: hotelId ?? this.hotelId,
      roomId: roomId ?? this.roomId,
      clientId: clientId ?? this.clientId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (price.present) {
      map['price'] = Variable<String>(price.value);
    }
    if (bookingStatus.present) {
      map['booking_status'] = Variable<String>(bookingStatus.value);
    }
    if (expectedCheckIn.present) {
      map['expected_check_in'] = Variable<DateTime>(expectedCheckIn.value);
    }
    if (expectedCheckOut.present) {
      map['expected_check_out'] = Variable<DateTime>(expectedCheckOut.value);
    }
    if (checkIn.present) {
      map['check_in'] = Variable<DateTime>(checkIn.value);
    }
    if (checkOut.present) {
      map['check_out'] = Variable<DateTime>(checkOut.value);
    }
    if (hotelId.present) {
      map['hotel_id'] = Variable<int>(hotelId.value);
    }
    if (roomId.present) {
      map['room_id'] = Variable<int>(roomId.value);
    }
    if (clientId.present) {
      map['client_id'] = Variable<int>(clientId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BookingsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('image: $image, ')
          ..write('price: $price, ')
          ..write('bookingStatus: $bookingStatus, ')
          ..write('expectedCheckIn: $expectedCheckIn, ')
          ..write('expectedCheckOut: $expectedCheckOut, ')
          ..write('checkIn: $checkIn, ')
          ..write('checkOut: $checkOut, ')
          ..write('hotelId: $hotelId, ')
          ..write('roomId: $roomId, ')
          ..write('clientId: $clientId')
          ..write(')'))
        .toString();
  }
}

class $BookingsTable extends Bookings with TableInfo<$BookingsTable, Booking> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BookingsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<String> price = GeneratedColumn<String>(
      'price', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _bookingStatusMeta =
      const VerificationMeta('bookingStatus');
  @override
  late final GeneratedColumn<String> bookingStatus = GeneratedColumn<String>(
      'booking_status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _expectedCheckInMeta =
      const VerificationMeta('expectedCheckIn');
  @override
  late final GeneratedColumn<DateTime> expectedCheckIn =
      GeneratedColumn<DateTime>('expected_check_in', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _expectedCheckOutMeta =
      const VerificationMeta('expectedCheckOut');
  @override
  late final GeneratedColumn<DateTime> expectedCheckOut =
      GeneratedColumn<DateTime>('expected_check_out', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _checkInMeta = const VerificationMeta('checkIn');
  @override
  late final GeneratedColumn<DateTime> checkIn = GeneratedColumn<DateTime>(
      'check_in', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _checkOutMeta = const VerificationMeta('checkOut');
  @override
  late final GeneratedColumn<DateTime> checkOut = GeneratedColumn<DateTime>(
      'check_out', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _hotelIdMeta = const VerificationMeta('hotelId');
  @override
  late final GeneratedColumn<int> hotelId = GeneratedColumn<int>(
      'hotel_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES hotels (id)');
  final VerificationMeta _roomIdMeta = const VerificationMeta('roomId');
  @override
  late final GeneratedColumn<int> roomId = GeneratedColumn<int>(
      'room_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES rooms (id)');
  final VerificationMeta _clientIdMeta = const VerificationMeta('clientId');
  @override
  late final GeneratedColumn<int> clientId = GeneratedColumn<int>(
      'client_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES clients (id)');
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        description,
        image,
        price,
        bookingStatus,
        expectedCheckIn,
        expectedCheckOut,
        checkIn,
        checkOut,
        hotelId,
        roomId,
        clientId
      ];
  @override
  String get aliasedName => _alias ?? 'bookings';
  @override
  String get actualTableName => 'bookings';
  @override
  VerificationContext validateIntegrity(Insertable<Booking> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('booking_status')) {
      context.handle(
          _bookingStatusMeta,
          bookingStatus.isAcceptableOrUnknown(
              data['booking_status']!, _bookingStatusMeta));
    } else if (isInserting) {
      context.missing(_bookingStatusMeta);
    }
    if (data.containsKey('expected_check_in')) {
      context.handle(
          _expectedCheckInMeta,
          expectedCheckIn.isAcceptableOrUnknown(
              data['expected_check_in']!, _expectedCheckInMeta));
    } else if (isInserting) {
      context.missing(_expectedCheckInMeta);
    }
    if (data.containsKey('expected_check_out')) {
      context.handle(
          _expectedCheckOutMeta,
          expectedCheckOut.isAcceptableOrUnknown(
              data['expected_check_out']!, _expectedCheckOutMeta));
    } else if (isInserting) {
      context.missing(_expectedCheckOutMeta);
    }
    if (data.containsKey('check_in')) {
      context.handle(_checkInMeta,
          checkIn.isAcceptableOrUnknown(data['check_in']!, _checkInMeta));
    } else if (isInserting) {
      context.missing(_checkInMeta);
    }
    if (data.containsKey('check_out')) {
      context.handle(_checkOutMeta,
          checkOut.isAcceptableOrUnknown(data['check_out']!, _checkOutMeta));
    } else if (isInserting) {
      context.missing(_checkOutMeta);
    }
    if (data.containsKey('hotel_id')) {
      context.handle(_hotelIdMeta,
          hotelId.isAcceptableOrUnknown(data['hotel_id']!, _hotelIdMeta));
    } else if (isInserting) {
      context.missing(_hotelIdMeta);
    }
    if (data.containsKey('room_id')) {
      context.handle(_roomIdMeta,
          roomId.isAcceptableOrUnknown(data['room_id']!, _roomIdMeta));
    } else if (isInserting) {
      context.missing(_roomIdMeta);
    }
    if (data.containsKey('client_id')) {
      context.handle(_clientIdMeta,
          clientId.isAcceptableOrUnknown(data['client_id']!, _clientIdMeta));
    } else if (isInserting) {
      context.missing(_clientIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Booking map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Booking(
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      description: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      image: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}image'])!,
      price: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}price'])!,
      bookingStatus: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}booking_status'])!,
      expectedCheckIn: attachedDatabase.options.types.read(
          DriftSqlType.dateTime, data['${effectivePrefix}expected_check_in'])!,
      expectedCheckOut: attachedDatabase.options.types.read(
          DriftSqlType.dateTime, data['${effectivePrefix}expected_check_out'])!,
      checkIn: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}check_in'])!,
      checkOut: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}check_out'])!,
      hotelId: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}hotel_id'])!,
      roomId: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}room_id'])!,
      clientId: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}client_id'])!,
    );
  }

  @override
  $BookingsTable createAlias(String alias) {
    return $BookingsTable(attachedDatabase, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final int id;
  final String name;
  final String email;
  final String password;
  final String phone;
  final String image;
  final String role;
  final String status;
  const User(
      {required this.id,
      required this.name,
      required this.email,
      required this.password,
      required this.phone,
      required this.image,
      required this.role,
      required this.status});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['email'] = Variable<String>(email);
    map['password'] = Variable<String>(password);
    map['phone'] = Variable<String>(phone);
    map['image'] = Variable<String>(image);
    map['role'] = Variable<String>(role);
    map['status'] = Variable<String>(status);
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      name: Value(name),
      email: Value(email),
      password: Value(password),
      phone: Value(phone),
      image: Value(image),
      role: Value(role),
      status: Value(status),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String>(json['email']),
      password: serializer.fromJson<String>(json['password']),
      phone: serializer.fromJson<String>(json['phone']),
      image: serializer.fromJson<String>(json['image']),
      role: serializer.fromJson<String>(json['role']),
      status: serializer.fromJson<String>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'email': serializer.toJson<String>(email),
      'password': serializer.toJson<String>(password),
      'phone': serializer.toJson<String>(phone),
      'image': serializer.toJson<String>(image),
      'role': serializer.toJson<String>(role),
      'status': serializer.toJson<String>(status),
    };
  }

  User copyWith(
          {int? id,
          String? name,
          String? email,
          String? password,
          String? phone,
          String? image,
          String? role,
          String? status}) =>
      User(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        password: password ?? this.password,
        phone: phone ?? this.phone,
        image: image ?? this.image,
        role: role ?? this.role,
        status: status ?? this.status,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('phone: $phone, ')
          ..write('image: $image, ')
          ..write('role: $role, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, email, password, phone, image, role, status);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.name == this.name &&
          other.email == this.email &&
          other.password == this.password &&
          other.phone == this.phone &&
          other.image == this.image &&
          other.role == this.role &&
          other.status == this.status);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> email;
  final Value<String> password;
  final Value<String> phone;
  final Value<String> image;
  final Value<String> role;
  final Value<String> status;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.password = const Value.absent(),
    this.phone = const Value.absent(),
    this.image = const Value.absent(),
    this.role = const Value.absent(),
    this.status = const Value.absent(),
  });
  UsersCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String email,
    required String password,
    required String phone,
    required String image,
    required String role,
    required String status,
  })  : name = Value(name),
        email = Value(email),
        password = Value(password),
        phone = Value(phone),
        image = Value(image),
        role = Value(role),
        status = Value(status);
  static Insertable<User> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? email,
    Expression<String>? password,
    Expression<String>? phone,
    Expression<String>? image,
    Expression<String>? role,
    Expression<String>? status,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (password != null) 'password': password,
      if (phone != null) 'phone': phone,
      if (image != null) 'image': image,
      if (role != null) 'role': role,
      if (status != null) 'status': status,
    });
  }

  UsersCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? email,
      Value<String>? password,
      Value<String>? phone,
      Value<String>? image,
      Value<String>? role,
      Value<String>? status}) {
    return UsersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      phone: phone ?? this.phone,
      image: image ?? this.image,
      role: role ?? this.role,
      status: status ?? this.status,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (role.present) {
      map['role'] = Variable<String>(role.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('phone: $phone, ')
          ..write('image: $image, ')
          ..write('role: $role, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _passwordMeta = const VerificationMeta('password');
  @override
  late final GeneratedColumn<String> password = GeneratedColumn<String>(
      'password', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _roleMeta = const VerificationMeta('role');
  @override
  late final GeneratedColumn<String> role = GeneratedColumn<String>(
      'role', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, email, password, phone, image, role, status];
  @override
  String get aliasedName => _alias ?? 'users';
  @override
  String get actualTableName => 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password']!, _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('role')) {
      context.handle(
          _roleMeta, role.isAcceptableOrUnknown(data['role']!, _roleMeta));
    } else if (isInserting) {
      context.missing(_roleMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      email: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      password: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}password'])!,
      phone: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}phone'])!,
      image: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}image'])!,
      role: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}role'])!,
      status: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class Payment extends DataClass implements Insertable<Payment> {
  final int id;
  final String name;
  final String description;
  final String image;
  final String price;
  final String paymentStatus;
  final DateTime paymentDate;
  final int bookingId;
  const Payment(
      {required this.id,
      required this.name,
      required this.description,
      required this.image,
      required this.price,
      required this.paymentStatus,
      required this.paymentDate,
      required this.bookingId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['description'] = Variable<String>(description);
    map['image'] = Variable<String>(image);
    map['price'] = Variable<String>(price);
    map['payment_status'] = Variable<String>(paymentStatus);
    map['payment_date'] = Variable<DateTime>(paymentDate);
    map['booking_id'] = Variable<int>(bookingId);
    return map;
  }

  PaymentsCompanion toCompanion(bool nullToAbsent) {
    return PaymentsCompanion(
      id: Value(id),
      name: Value(name),
      description: Value(description),
      image: Value(image),
      price: Value(price),
      paymentStatus: Value(paymentStatus),
      paymentDate: Value(paymentDate),
      bookingId: Value(bookingId),
    );
  }

  factory Payment.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Payment(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      image: serializer.fromJson<String>(json['image']),
      price: serializer.fromJson<String>(json['price']),
      paymentStatus: serializer.fromJson<String>(json['paymentStatus']),
      paymentDate: serializer.fromJson<DateTime>(json['paymentDate']),
      bookingId: serializer.fromJson<int>(json['bookingId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'image': serializer.toJson<String>(image),
      'price': serializer.toJson<String>(price),
      'paymentStatus': serializer.toJson<String>(paymentStatus),
      'paymentDate': serializer.toJson<DateTime>(paymentDate),
      'bookingId': serializer.toJson<int>(bookingId),
    };
  }

  Payment copyWith(
          {int? id,
          String? name,
          String? description,
          String? image,
          String? price,
          String? paymentStatus,
          DateTime? paymentDate,
          int? bookingId}) =>
      Payment(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        image: image ?? this.image,
        price: price ?? this.price,
        paymentStatus: paymentStatus ?? this.paymentStatus,
        paymentDate: paymentDate ?? this.paymentDate,
        bookingId: bookingId ?? this.bookingId,
      );
  @override
  String toString() {
    return (StringBuffer('Payment(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('image: $image, ')
          ..write('price: $price, ')
          ..write('paymentStatus: $paymentStatus, ')
          ..write('paymentDate: $paymentDate, ')
          ..write('bookingId: $bookingId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, description, image, price,
      paymentStatus, paymentDate, bookingId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Payment &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.image == this.image &&
          other.price == this.price &&
          other.paymentStatus == this.paymentStatus &&
          other.paymentDate == this.paymentDate &&
          other.bookingId == this.bookingId);
}

class PaymentsCompanion extends UpdateCompanion<Payment> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> description;
  final Value<String> image;
  final Value<String> price;
  final Value<String> paymentStatus;
  final Value<DateTime> paymentDate;
  final Value<int> bookingId;
  const PaymentsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.image = const Value.absent(),
    this.price = const Value.absent(),
    this.paymentStatus = const Value.absent(),
    this.paymentDate = const Value.absent(),
    this.bookingId = const Value.absent(),
  });
  PaymentsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String description,
    required String image,
    required String price,
    required String paymentStatus,
    required DateTime paymentDate,
    required int bookingId,
  })  : name = Value(name),
        description = Value(description),
        image = Value(image),
        price = Value(price),
        paymentStatus = Value(paymentStatus),
        paymentDate = Value(paymentDate),
        bookingId = Value(bookingId);
  static Insertable<Payment> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<String>? image,
    Expression<String>? price,
    Expression<String>? paymentStatus,
    Expression<DateTime>? paymentDate,
    Expression<int>? bookingId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (image != null) 'image': image,
      if (price != null) 'price': price,
      if (paymentStatus != null) 'payment_status': paymentStatus,
      if (paymentDate != null) 'payment_date': paymentDate,
      if (bookingId != null) 'booking_id': bookingId,
    });
  }

  PaymentsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? description,
      Value<String>? image,
      Value<String>? price,
      Value<String>? paymentStatus,
      Value<DateTime>? paymentDate,
      Value<int>? bookingId}) {
    return PaymentsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      image: image ?? this.image,
      price: price ?? this.price,
      paymentStatus: paymentStatus ?? this.paymentStatus,
      paymentDate: paymentDate ?? this.paymentDate,
      bookingId: bookingId ?? this.bookingId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (price.present) {
      map['price'] = Variable<String>(price.value);
    }
    if (paymentStatus.present) {
      map['payment_status'] = Variable<String>(paymentStatus.value);
    }
    if (paymentDate.present) {
      map['payment_date'] = Variable<DateTime>(paymentDate.value);
    }
    if (bookingId.present) {
      map['booking_id'] = Variable<int>(bookingId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PaymentsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('image: $image, ')
          ..write('price: $price, ')
          ..write('paymentStatus: $paymentStatus, ')
          ..write('paymentDate: $paymentDate, ')
          ..write('bookingId: $bookingId')
          ..write(')'))
        .toString();
  }
}

class $PaymentsTable extends Payments with TableInfo<$PaymentsTable, Payment> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PaymentsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<String> price = GeneratedColumn<String>(
      'price', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _paymentStatusMeta =
      const VerificationMeta('paymentStatus');
  @override
  late final GeneratedColumn<String> paymentStatus = GeneratedColumn<String>(
      'payment_status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _paymentDateMeta =
      const VerificationMeta('paymentDate');
  @override
  late final GeneratedColumn<DateTime> paymentDate = GeneratedColumn<DateTime>(
      'payment_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _bookingIdMeta = const VerificationMeta('bookingId');
  @override
  late final GeneratedColumn<int> bookingId = GeneratedColumn<int>(
      'booking_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES bookings (id)');
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        description,
        image,
        price,
        paymentStatus,
        paymentDate,
        bookingId
      ];
  @override
  String get aliasedName => _alias ?? 'payments';
  @override
  String get actualTableName => 'payments';
  @override
  VerificationContext validateIntegrity(Insertable<Payment> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('payment_status')) {
      context.handle(
          _paymentStatusMeta,
          paymentStatus.isAcceptableOrUnknown(
              data['payment_status']!, _paymentStatusMeta));
    } else if (isInserting) {
      context.missing(_paymentStatusMeta);
    }
    if (data.containsKey('payment_date')) {
      context.handle(
          _paymentDateMeta,
          paymentDate.isAcceptableOrUnknown(
              data['payment_date']!, _paymentDateMeta));
    } else if (isInserting) {
      context.missing(_paymentDateMeta);
    }
    if (data.containsKey('booking_id')) {
      context.handle(_bookingIdMeta,
          bookingId.isAcceptableOrUnknown(data['booking_id']!, _bookingIdMeta));
    } else if (isInserting) {
      context.missing(_bookingIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Payment map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Payment(
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      description: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      image: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}image'])!,
      price: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}price'])!,
      paymentStatus: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}payment_status'])!,
      paymentDate: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}payment_date'])!,
      bookingId: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}booking_id'])!,
    );
  }

  @override
  $PaymentsTable createAlias(String alias) {
    return $PaymentsTable(attachedDatabase, alias);
  }
}

abstract class _$AppDataBase extends GeneratedDatabase {
  _$AppDataBase(QueryExecutor e) : super(e);
  late final $HotelsTable hotels = $HotelsTable(this);
  late final $ClientsTable clients = $ClientsTable(this);
  late final $RoomsTable rooms = $RoomsTable(this);
  late final $BookingsTable bookings = $BookingsTable(this);
  late final $UsersTable users = $UsersTable(this);
  late final $PaymentsTable payments = $PaymentsTable(this);
  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [hotels, clients, rooms, bookings, users, payments];
}
