import '../entities/task_entity.dart';
import '../repositories/task_repository.dart';

class UpdateTask {
  final TaskRepository taskRepository;

  UpdateTask(this.taskRepository);

  Future<void> call(TaskEntity task) async {
    return await taskRepository.updateTask(task);
  }
}
