import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'tasks_controller.dart';

class TasksPage extends StatefulWidget {
  final String title;
  const TasksPage({Key key, this.title = "Tasks"}) : super(key: key);

  @override
  _TasksPageState createState() => _TasksPageState();
}

class _TasksPageState extends ModularState<TasksPage, TasksController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: CustomDrawer(),
      body: Column(
        children: <Widget>[
          Center(
            child: Text(
              "Task",
              style: TextStyle(
                fontFamily: 'NunitoSans',
                fontSize: 47,
                color: Color(0xFF393939),
              ),
            ),
          ),
          Center(
            child: Text(
              "Task",
              style: TextStyle(
                fontFamily: 'NunitoSans',
                fontSize: 47,
                color: Color(0xFF393939),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Color(0xFF161060),
      child: Drawer(
        semanticLabel: 'Menu',
        elevation: 0,
        child: ColoredBox(
          color: Color(0xFF161060),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(32, 64, 32, 64),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 48),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'TASK APP',
                        style: TextStyle(
                          fontFamily: 'NunitoSans',
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 20,
                          semanticLabel: 'Close',
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CustomDrawerItem(title: 'Dashboard'),
                    CustomDrawerItem(title: 'Calender'),
                    CustomDrawerItem(title: 'Categorize Tasks'),
                    CustomDrawerItem(title: 'Setting')
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomDrawerItem extends StatelessWidget {
  final String title;

  const CustomDrawerItem({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: Container(
        margin: EdgeInsets.only(bottom: 24),
        child: Text(
          this.title,
          style: TextStyle(
            fontFamily: 'NunitoSans',
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
