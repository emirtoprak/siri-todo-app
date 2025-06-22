import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:siri_todo_app/src/constants/app_constant.dart';
import 'package:siri_todo_app/src/pages/home/view_model/home_provider.dart';

class AddTodoWidget extends StatelessWidget {
  const AddTodoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final homeProvider = context.read<HomeProvider>();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: homeProvider.textController,
              decoration: const InputDecoration(
                hintText: AppConstant.addTodo,
                border: OutlineInputBorder(),
              ),
              onSubmitted: (value) {
                homeProvider.addTodoItem(value);
                homeProvider.textController.clear();
              },
            ),
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            onPressed: () {
              homeProvider.addTodoItem(homeProvider.textController.text);
              homeProvider.textController.clear();
            },
            child: const Text(AppConstant.add),
          ),
        ],
      ),
    );
  }
}
