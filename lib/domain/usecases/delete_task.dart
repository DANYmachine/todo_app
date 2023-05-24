import '../repositories/task_repository.dart';

class DeleteTask {
  final TaskRepository taskRepository;

  DeleteTask(this.taskRepository);

  Future<void> call(int id) async {
    return await taskRepository.deleteTask(id);
  }
}
