import 'dart:io';
import 'package:drift/native.dart';
import 'package:instagram_clone/data/db/users/user.dart';
import 'package:instagram_clone/data/db/users/user_dao.dart';
import 'package:path/path.dart' as p;
import 'package:drift/drift.dart';
import 'package:path_provider/path_provider.dart';
part 'database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'instagram.db.sqlite'));
    return NativeDatabase.createInBackground(
      file,
      logStatements: false,
      setup: (database) {
        database.execute('PRAGMA journal_mode=WAL;');
        print("db setup");
      },
    );
  });
}

@DriftDatabase(tables: [
  Users,
], daos: [
  UsersDao,
])
class AppLocalDb extends _$AppLocalDb {
  AppLocalDb() : super(_openConnection());

  @override
  int get schemaVersion => 1;
  // run command on version change
  //dart run drift_dev schema dump lib/data/db/database.dart lib/data/db/drift_migrations/
  // dart run drift_dev schema steps lib/data/db/drift_migrations/ lib/data/db/schema_versions.dart

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
    );
  }
}
