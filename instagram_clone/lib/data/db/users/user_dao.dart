import 'package:drift/drift.dart';
import 'package:instagram_clone/data/db/database.dart';
import 'package:instagram_clone/data/db/users/user.dart';
part 'user_dao.g.dart';

@DriftAccessor(tables: [Users])
class UsersDao extends DatabaseAccessor<AppLocalDb> with _$UsersDaoMixin {
  UsersDao(super.attachedDatabase);

  Stream<User?> getLoggedInUser() {
    return (select(users)..where((tbl) => tbl.isActive.equals(true)))
        .watchSingleOrNull();
  }

  Future<User?> getLoggedInUserFuture() {
    return (select(users)..where((tbl) => tbl.isActive.equals(true)))
        .getSingleOrNull();
  }

  Future<void> createUserSession(User userData) async {
    await transaction(() async {
      await markOtherUserInActive();
      final userCom = userData.copyWith(isActive: true);

      await into(users).insertOnConflictUpdate(userCom);
    });
  }

  Future<void> markOtherUserInActive() async {
    await update(users).write(const UsersCompanion(isActive: Value(false)));
  }

  Future<void> deleteUserSession(String id) async {
    await (delete(users)..where((tbl) => tbl.id.equals(id))).go();
  }
}
