import 'package:equatable/equatable.dart';

enum Priority { low, medium, high }

class TaskEntity extends Equatable {
  final String id;
  final String title;
  final String description;
  final bool isCompleted;
  final Priority priority;
  final DateTime created;

  const TaskEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.isCompleted,
    required this.priority,
    required this.created,
  });

  @override
  List<Object?> get props {
    return [
      id,
      title,
      description,
      isCompleted,
      priority,
      created,
    ];
  }
}
