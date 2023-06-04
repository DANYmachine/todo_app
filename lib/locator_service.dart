import 'package:get_it/get_it.dart';

import 'feature/domain/usecases/create_task.dart';
import 'feature/domain/usecases/delete_task.dart';
import 'feature/domain/usecases/get_all_tasks.dart';
import 'feature/domain/usecases/update_task.dart';
import 'feature/presentation/bloc/tasks_bloc.dart';

final di = GetIt.instance;

Future<void> init() async {
  di.registerFactory(() => TasksBloc(getAllTasks: di()));

  di.registerLazySingleton(() => GetAllTasks(di()));
  di.registerLazySingleton(() => CreateTask(di()));
  di.registerLazySingleton(() => DeleteTask(di()));
  di.registerLazySingleton(() => UpdateTask(di()));
}
