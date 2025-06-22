import 'package:flutter/material.dart';
import 'package:intelligence/intelligence.dart';
import 'package:siri_todo_app/src/core/services/local_caching.dart';
import 'package:siri_todo_app/src/pages/home/model/todo_item.dart';

class HomeProvider extends ChangeNotifier {
  final List<TodoItem> _todoItems = [];
  final TextEditingController _textController = TextEditingController();
  final LocalCaching _localCaching = LocalCaching.instance;

  HomeProvider() {
    _loadTodoItems();
    Intelligence().selectionsStream().listen(handleSiri);
  }

  void _loadTodoItems() {
    final items = _localCaching.getTodoItems();
    if (items != null) {
      _todoItems.clear();
      _todoItems.addAll(items);
      notifyListeners();
    }
  }

  List<TodoItem> get todoItems => _todoItems;
  TextEditingController get textController => _textController;

  set todoItems(List<TodoItem> value) {
    _todoItems.clear();
    _todoItems.addAll(value);
    notifyListeners();
  }

  void addTodoItem(String task) {
    if (task.isNotEmpty) {
      if (!_todoItems.any((item) => item.task == task)) {
        removeTodoItem(_todoItems.indexWhere((item) => item.task == task));
        _todoItems.add(TodoItem(task: task, isCompleted: false));
        _localCaching.setTodoItem(TodoItem(task: task, isCompleted: false));
        notifyListeners();
      }
    }
  }

  void toggleTodoItem(int index) {
    _todoItems[index].isCompleted = !_todoItems[index].isCompleted;
    _localCaching.updateTodoItem(_todoItems[index]);
    notifyListeners();
  }

  void removeTodoItem(int index) {
    _todoItems.removeAt(index);
    _localCaching.removeTodoItem(_todoItems[index].task);
    notifyListeners();
  }

  void handleSiri(String task) {
    // Handle the predefined tasks
    switch (task) {
      case 'prepareFood':
        addTodoItem('Prepare food');
        break;
      case 'goShopping':
        addTodoItem('Go shopping');
        break;
      case 'cleanHouse':
        addTodoItem('Clean the house');
        break;
      case 'goForWalk':
        addTodoItem('Go for a walk');
        break;
      case 'buyGroceries':
        addTodoItem('Buy groceries');
        break;
      case 'callMom':
        addTodoItem('Call Mom');
        break;
      case 'doLaundry':
        addTodoItem('Do laundry');
        break;
      case 'waterPlants':
        addTodoItem('Water the plants');
        break;
      case 'takeMedicine':
        addTodoItem('Take medicine');
        break;
      case 'payBills':
        addTodoItem('Pay bills');
        break;
      case 'feedPets':
        addTodoItem('Feed the pets');
        break;
      case 'workOut':
        addTodoItem('Work out');
        break;
      case 'makeBed':
        addTodoItem('Make the bed');
        break;
      case 'checkEmails':
        addTodoItem('Check emails');
        break;
      case 'readBook':
        addTodoItem('Read a book');
        break;
      case 'planMeeting':
        addTodoItem('Plan a meeting');
        break;
      case 'writeReport':
        addTodoItem('Write a report');
        break;
      case 'relax':
        addTodoItem('Relax');
        break;
      case 'checkWeather':
        addTodoItem('Check weather');
        break;
      case 'sendMessage':
        addTodoItem('Send message');
        break;
      default:
        // If it's not a predefined task and not a custom task format,
        // just add it directly as a task
        if (task.isNotEmpty) {
          addTodoItem(task);
        }
    }
  }
}
