import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/app/app_controller.dart';
import 'package:todo_app/app/app_widget.dart';
import 'package:todo_app/app/pages/home/home_page.dart';

import 'pages/other/other_page.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router('/other', child: (_, args) => OtherPage()),
      ];

  @override
  Widget get bootstrap => AppWidget();
}
