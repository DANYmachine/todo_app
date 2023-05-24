import 'package:todo_app/domain/entities/task_entity.dart';
import 'package:todo_app/domain/repositories/task_repository.dart';

class GetAllTasks {
  final TaskRepository taskRepository;

  GetAllTasks(this.taskRepository);

  Future<List<TaskEntity>> call() async {
    return await taskRepository.getTasks();
  }
}
