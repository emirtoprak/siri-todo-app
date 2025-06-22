import 'package:flutter/material.dart';
import 'package:siri_todo_app/src/pages/home/model/todo_item.dart';

class TodoListItem extends StatelessWidget {
  final TodoItem todoItem;
  final VoidCallback onToggle;
  final VoidCallback onDelete;

  const TodoListItem({
    super.key,
    required this.todoItem,
    required this.onToggle,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(todoItem.task),
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      direction: DismissDirection.endToStart,
      onDismissed: (_) => onDelete(),
      child: ListTile(
        title: Text(
          todoItem.task,
          style: TextStyle(
            decoration:
                todoItem.isCompleted ? TextDecoration.lineThrough : null,
            color: todoItem.isCompleted ? Colors.grey : null,
          ),
        ),
        leading: Checkbox(
          value: todoItem.isCompleted,
          onChanged: (_) => onToggle(),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: onDelete,
        ),
      ),
    );
  }
}
