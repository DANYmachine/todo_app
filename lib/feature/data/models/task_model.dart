import '../../domain/entities/task_entity.dart';

class TaskModel extends TaskEntity {
  const TaskModel({
    required id,
    required title,
    required description,
    required isCompleted,
    required created,
  }) : super(
          id: id,
          title: title,
          description: description,
          isCompleted: isCompleted,
          created: created,
        );

  factory TaskModel.fromJson(Map<String, dynamic> json) {
    return TaskModel(
      id: ['id'] as int,
      title: ['title'] as String,
      description: ['description'] as String,
      isCompleted: ['isCompleted'] as bool,
      created: DateTime.parse(['created'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'isCompleted': isCompleted,
      'created': created.toIso8601String(),
    };
  }
}
