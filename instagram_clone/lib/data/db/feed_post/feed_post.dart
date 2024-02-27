import 'package:drift/drift.dart';
import 'package:instagram_clone/data/db/convertors/string_list_convertor.dart';

class FeedPosts extends Table {
  TextColumn get id => text().unique()();
  TextColumn get caption => text().nullable()();
  IntColumn get commentCount => integer()();
  IntColumn get likeCount => integer()();
  TextColumn get mediaUrl => text().map(StringListConvertor())();
  DateTimeColumn get updatedAt => dateTime()();
  TextColumn get userId => text()();
  TextColumn get userName => text()();
  TextColumn get fullName => text()();
  TextColumn get profileImageURL => text().nullable()();
  BoolColumn get liked => boolean().withDefault(const Variable(false))();
}
