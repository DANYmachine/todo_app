import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_all_tasks.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  final GetAllTasks getAllTasks;
  TasksBloc({required this.getAllTasks}) : super(TasksInitial()) {
    on<TasksEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
