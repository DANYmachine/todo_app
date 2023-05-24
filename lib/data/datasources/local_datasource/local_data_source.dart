import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import '../../../domain/entities/task_db_entity.dart';

part 'local_data_source.g.dart';

@DriftDatabase(tables: [Tasks])
class LocalDataSource extends _$LocalDataSource {
  LocalDataSource() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<Task>> getTasks() async {
    return await select(tasks).get();
  }

  Future<void> addTask(TasksCompanion task) async {
    await into(tasks).insert(task);
  }

  Future<void> updateTask(TasksCompanion task) async {
    await update(tasks).replace(task);
  }

  Future<void> deleteTask(int id) async {
    await (delete(tasks)..where((tbl) => tbl.id.equals(id))).go();
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
