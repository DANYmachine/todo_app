import 'dart:convert';
import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/error/exception.dart';
import '../../models/task_model.dart';

abstract class TasksLocalDataSource {
  Future<List<TaskModel>> getTasksFromCache();
  Future<void> tasksToCache(List<TaskModel> tasks);
}

const CACHED_TASKS_LIST = 'CACHED_TASKS_LIST';

class TasksLocalDataSourceImpl implements TasksLocalDataSource {
  final SharedPreferences sharedPreferences;

  TasksLocalDataSourceImpl({required this.sharedPreferences});
  @override
  Future<List<TaskModel>> getTasksFromCache() {
    final jsonTasksList = sharedPreferences.getStringList(CACHED_TASKS_LIST);
    if (jsonTasksList!.isNotEmpty) {
      log('Got tasks from cache: ${jsonTasksList.length}');
      return Future.value(
        jsonTasksList
            .map((task) => TaskModel.fromJson(json.decode(task)))
            .toList(),
      );
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> tasksToCache(List<TaskModel> tasks) {
    // TODO: implement tasksToCache
    throw UnimplementedError();
  }
}
