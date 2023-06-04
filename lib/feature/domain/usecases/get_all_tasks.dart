import '../entities/task_entity.dart';
import '../repositories/task_repository.dart';

class GetAllTasks {
  final TaskRepository taskRepository;

  GetAllTasks(this.taskRepository);

  Future<List<TaskEntity>> call() async {
    return await taskRepository.getTasks();
  }
}
