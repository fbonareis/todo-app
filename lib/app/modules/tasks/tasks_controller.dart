import 'package:mobx/mobx.dart';

part 'tasks_controller.g.dart';

class TasksController = _TasksControllerBase with _$TasksController;

abstract class _TasksControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
