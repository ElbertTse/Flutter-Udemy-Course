import 'package:flutter/material.dart';

// we pass the callback functio to the checkbox so that the checkbox can call the callback to change the isChecked value.
// we have the task tile be a stateful widget rather than the checkbox since we have global state, the checkbox AND the line through the text.
// if we only had to care about the checkbox, we can keep it as local state.
// we have the task tile be the stateful widget since the checkbox is the child widget. This is why we define the callback function in the tile class
// rather than the checkbox class.

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallback;
  /* we turned this into an anonymous function at line 35 but we can pass this function by name as well. Either one works.
  void checkboxCallback(bool checkboxState) {
    setState(() {
      isChecked = checkboxState;
    });
  }
  */

  TaskTile({this.isChecked, this.taskTitle, this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallback
        ),
    );
  }
}

