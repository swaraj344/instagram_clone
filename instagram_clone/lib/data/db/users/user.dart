import 'package:drift/drift.dart';

class Users extends Table {
  TextColumn get id => text()();
  TextColumn get fullName => text()();
  TextColumn get userName => text().unique()();
  TextColumn get email => text()();
  BoolColumn get emailVerified =>
      boolean().withDefault(const Variable(false))();
  TextColumn get phoneNumber => text().nullable()();
  TextColumn get profileImageUrl => text().nullable()();
  TextColumn get bio => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  BoolColumn get isActive => boolean().withDefault(const Variable(false))();
  TextColumn get authToken => text()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}
