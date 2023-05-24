import 'package:todo_app/domain/entities/task_entity.dart';

class TaskModel extends TaskEntity {
  const TaskModel({
    required id,
    required title,
    required description,
    required isCompleted,
    required priority,
    required created,
  }) : super(
          id: id,
          title: title,
          description: description,
          isCompleted: isCompleted,
          priority: priority,
          created: created,
        );

  factory TaskModel.fromJson(Map<String, dynamic> json) {
    return TaskModel(
      id: ['id'] as int,
      title: ['title'] as String,
      description: ['description'] as String,
      isCompleted: ['isCompleted'] as bool,
      priority: ['priority'] as Priority,
      created: DateTime.parse(['created'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'isCompleted': isCompleted,
      'priority': priority,
      'created': created.toIso8601String(),
    };
  }
}
