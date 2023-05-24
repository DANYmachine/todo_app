import '../entities/task_entity.dart';
import '../repositories/task_repository.dart';

class CreateTask {
  final TaskRepository taskRepository;

  CreateTask(this.taskRepository);

  Future<void> call(TaskEntity task) async {
    return await taskRepository.addTask(task);
  }
}
