import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/app/app_controller.dart';
import 'package:todo_app/app/app_widget.dart';
import 'package:todo_app/app/modules/tasks/tasks_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: TasksModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();
}
