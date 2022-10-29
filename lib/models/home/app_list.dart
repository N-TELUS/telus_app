import 'package:flutter/material.dart';
import 'package:telus_app/screens/routine/routine_screen.dart';
import 'package:telus_app/screens/schedule/schedule_screen.dart';
import 'package:telus_app/screens/todo/todo_screen.dart';

class AppList {
  final Widget screenName;
  final String iconName;

  AppList({
    required this.screenName,
    required this.iconName,
  });
}

final List<AppList> appList = [
  AppList(screenName: TodoScreen(), iconName: "add_task.svg"),
  AppList(screenName: ScheduleScreen(), iconName: "calender.svg"),
  AppList(screenName: RoutineScreen(), iconName: "routine.svg"),
];
