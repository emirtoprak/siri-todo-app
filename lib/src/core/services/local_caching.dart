import 'package:hive_flutter/hive_flutter.dart';
import 'package:siri_todo_app/src/constants/local_constant.dart';
import 'package:siri_todo_app/src/pages/home/model/todo_item.dart';

class LocalCaching {
  static final LocalCaching _instance = LocalCaching._init();

  static LocalCaching get instance => _instance;
  LocalCaching._init();

  Box? todoBox;

  Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(TodoItemAdapter());
    instance.todoBox = await Hive.openBox(LocalConstant.todoBoxName);
  }

  void setTodoItem(TodoItem todoItem) {
    instance.todoBox?.put(todoItem.task, todoItem);
  }

  List<TodoItem>? getTodoItems() {
    return instance.todoBox?.values.map((e) => e as TodoItem).toList();
  }

  void removeTodoItem(String task) {
    instance.todoBox?.delete(task);
  }

  void updateTodoItem(TodoItem todoItem) {
    instance.todoBox?.put(todoItem.task, todoItem);
  }
}
