import 'package:equatable/equatable.dart';

class TaskEntity extends Equatable {
  final String id;
  final String title;
  final String description;
  final bool isCompleted;
  final DateTime created;

  const TaskEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.isCompleted,
    required this.created,
  });

  @override
  List<Object?> get props {
    return [
      id,
      title,
      description,
      isCompleted,
      created,
    ];
  }
}
