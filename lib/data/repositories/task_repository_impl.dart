import 'package:todo_app/data/models/task_model.dart';
import '../../domain/entities/task_entity.dart';
import '../../domain/repositories/task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  @override
  Future<List<TaskModel>> getTasks() {
    // TODO: implement getTasks
    throw UnimplementedError();
  }

  @override
  Future<void> addTask(TaskEntity task) {
    // TODO: implement addTask
    throw UnimplementedError();
  }

  @override
  Future<void> deleteTask(int id) {
    // TODO: implement deleteTask
    throw UnimplementedError();
  }

  @override
  Future<void> updateTask(TaskEntity task) {
    // TODO: implement updateTask
    throw UnimplementedError();
  }
}
