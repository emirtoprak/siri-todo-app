import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:siri_todo_app/src/constants/app_constant.dart';
import 'package:siri_todo_app/src/pages/home/view_model/home_provider.dart';
import 'package:siri_todo_app/src/pages/home/widgets/add_todo_widget.dart';
import 'package:siri_todo_app/src/pages/home/widgets/todo_list_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(AppConstant.title),
      ),
      body: Column(
        children: [
          const AddTodoWidget(),
          Expanded(
            child: Consumer<HomeProvider>(
              builder: (context, homeProvider, child) {
                return homeProvider.todoItems.isEmpty
                    ? const Center(child: Text(AppConstant.noTaskYet))
                    : ListView.builder(
                        itemCount: homeProvider.todoItems.length,
                        itemBuilder: (context, index) {
                          return TodoListItem(
                            todoItem: homeProvider.todoItems[index],
                            onToggle: () => homeProvider.toggleTodoItem(index),
                            onDelete: () => homeProvider.removeTodoItem(index),
                          );
                        },
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
