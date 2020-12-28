import 'package:flutter/material.dart';
import 'package:flutter_provider_todo/database_provider.dart';
import 'package:flutter_provider_todo/tasks_widget.dart';
import 'package:provider/provider.dart';

class AllTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
          children: Provider.of<ProviderDatabase>(context)
              .dataList
              .where((element) =>
                  element.isComplete == false || element.isComplete == true)
              .map((e) => TasksWidget(e))
              .toList()),
    );
  }
}

class CompleteTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
          children: Provider.of<ProviderDatabase>(context)
              .dataList
              .where((element) => element.isComplete == true)
              .map((e) => TasksWidget(e))
              .toList()),
    );
  }
}

class InCompleteTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
          children: Provider.of<ProviderDatabase>(context)
              .dataList
              .where((element) => element.isComplete == false)
              .map((e) => TasksWidget(e))
              .toList()),
    );
  }
}
