import 'package:flutter/material.dart';
import 'tasks_tile.dart';
import 'package:todoey_flutter/models/task.dart';


// keep this as a stateful widget, only had to move tasks list up the tree. 
// only thing we did to ove state up was moving the list to the tasks screen.

class TasksList extends StatefulWidget {

  final List<Task> tasks;

  TasksList(this.tasks);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkBoxCallback: (bool checkboxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              }
            );
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
