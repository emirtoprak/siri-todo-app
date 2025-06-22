import 'package:hive_flutter/hive_flutter.dart';

part 'todo_item.g.dart';

@HiveType(typeId: 1)
class TodoItem extends HiveObject {
  @HiveField(0)
  String task;
  @HiveField(1)
  bool isCompleted;

  TodoItem({required this.task, required this.isCompleted});
}
