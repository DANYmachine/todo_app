import 'package:todo_app/domain/entities/task_entity.dart';

import '../../data/models/task_model.dart';

abstract class TaskRepository {
  Future<List<TaskModel>> getTasks();
  Future<void> addTask(TaskEntity task);
  Future<void> updateTask(TaskEntity task);
  Future<void> deleteTask(int id);
}
