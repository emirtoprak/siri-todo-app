
# Siri To-Do App

Siri To-Do App is a Flutter-based task management app that allows you to interact with your to-do list using Siri voice commands. The app utilizes the **MVVM (Model-View-ViewModel)** architecture for clean and scalable code. It also integrates the **Intelligence** library to handle Siri shortcuts and voice interactions.

## Features
- Voice commands for predefined tasks (e.g., "Prepare food", "Go shopping", etc.)
- Task management via a simple UI with the ability to add, toggle, and delete tasks.
- Persistent task storage using Hive (local caching).
- Built using **Provider** for state management and following **MVVM architecture** principles.

## Architecture

This project follows the **MVVM** architecture:
- **Model**: Represents the data (e.g., TodoItem).
- **View**: The UI components that display the data (e.g., HomePage, AddTodoWidget).
- **ViewModel**: Manages the data logic and interacts with the model and view (e.g., HomeProvider).

## Dependencies

The following dependencies are used in this project:

### Dependencies
- `intelligence: ^0.2.0`: Library for handling voice interactions with Siri shortcuts.
- `provider: ^6.1.5`: State management solution using the Provider package.
- `hive_flutter: ^1.1.0`: A lightweight and fast database for Flutter, used for persistent local storage.

### Dev Dependencies
- `flutter_test`: Flutter testing framework for unit and widget testing.
- `flutter_lints: ^3.0.0`: Linter configuration for consistent code style.
- `build_runner: ^2.4.11`: A tool to run code generation tasks.
- `hive_generator: ^2.0.1`: Code generator for Hive model classes.

## Installation

Follow the steps below to set up the project on your local machine.

### Step 1: Clone the repository
```bash
git clone https://github.com/yourusername/siri-todo-app.git
cd siri-todo-app
```

### Step 2: Install dependencies
```bash
flutter pub get
```

### Step 3: Set up Hive
1. Add the Hive and Hive Flutter setup in your project, as demonstrated in the code.
2. You can initialize Hive and set up the necessary configurations for storing tasks locally.

### Step 4: Run the app
Make sure you have Flutter set up on your system. If not, follow the installation guide from [Flutter's official site](https://flutter.dev/docs/get-started/install).

Once Flutter is set up, you can run the app:
```bash
flutter run
```

### Step 5: Testing Siri Shortcuts
To test Siri shortcuts, you can add the predefined shortcuts in **AllAppShortcuts.swift** (located in your iOS project) as described in the code. These shortcuts map specific phrases to tasks in the to-do list.

### Step 6: Local Storage with Hive
Hive is used to persist to-do items locally, and the app will load and store to-do items in a persistent storage whenever tasks are added or removed.

## Usage

- **Voice Commands**: You can activate Siri and say any of the predefined commands to add a task. For example:
  - "Prepare food in Siri Todo App"
  - "Go shopping in Siri Todo App"
  - "Check emails in Siri Todo App"

- **Managing Tasks**: You can add tasks using the UI. Tasks are displayed in a list, and you can mark them as completed or delete them.

- **Persistent Storage**: All tasks will be saved locally on the device using Hive, so they persist even after closing the app.

## Siri Shortcuts List

Here are all the available Siri phrases and the corresponding actions:

1. **Prepare food**  
   Siri Phrase: "Prepare food in Siri Todo App"  
   Action: Adds "Prepare food" to the to-do list.

2. **Go shopping**  
   Siri Phrase: "Go shopping in Siri Todo App"  
   Action: Adds "Go shopping" to the to-do list.

3. **Clean the house**  
   Siri Phrase: "Clean the house in Siri Todo App"  
   Action: Adds "Clean the house" to the to-do list.

4. **Go for a walk**  
   Siri Phrase: "Go for a walk in Siri Todo App"  
   Action: Adds "Go for a walk" to the to-do list.

5. **Buy groceries**  
   Siri Phrase: "Buy groceries in Siri Todo App"  
   Action: Adds "Buy groceries" to the to-do list.

6. **Call Mom**  
   Siri Phrase: "Call Mom in Siri Todo App"  
   Action: Adds "Call Mom" to the to-do list.

7. **Do laundry**  
   Siri Phrase: "Do laundry in Siri Todo App"  
   Action: Adds "Do laundry" to the to-do list.

8. **Water the plants**  
   Siri Phrase: "Water the plants in Siri Todo App"  
   Action: Adds "Water the plants" to the to-do list.

9. **Take medicine**  
   Siri Phrase: "Take medicine in Siri Todo App"  
   Action: Adds "Take medicine" to the to-do list.

10. **Pay bills**  
    Siri Phrase: "Pay bills in Siri Todo App"  
    Action: Adds "Pay bills" to the to-do list.

11. **Feed the pets**  
    Siri Phrase: "Feed the pets in Siri Todo App"  
    Action: Adds "Feed the pets" to the to-do list.

12. **Work out**  
    Siri Phrase: "Work out in Siri Todo App"  
    Action: Adds "Work out" to the to-do list.

13. **Make the bed**  
    Siri Phrase: "Make the bed in Siri Todo App"  
    Action: Adds "Make the bed" to the to-do list.

14. **Check emails**  
    Siri Phrase: "Check emails in Siri Todo App"  
    Action: Adds "Check emails" to the to-do list.

15. **Read a book**  
    Siri Phrase: "Read a book in Siri Todo App"  
    Action: Adds "Read a book" to the to-do list.

16. **Plan a meeting**  
    Siri Phrase: "Plan a meeting in Siri Todo App"  
    Action: Adds "Plan a meeting" to the to-do list.

17. **Write a report**  
    Siri Phrase: "Write a report in Siri Todo App"  
    Action: Adds "Write a report" to the to-do list.

18. **Relax**  
    Siri Phrase: "Relax in Siri Todo App"  
    Action: Adds "Relax" to the to-do list.

19. **Check weather**  
    Siri Phrase: "Check weather in Siri Todo App"  
    Action: Adds "Check weather" to the to-do list.

20. **Send message**  
    Siri Phrase: "Send message in Siri Todo App"  
    Action: Adds "Send message" to the to-do list.

## Code Structure

### 1. HomePage (UI Layer)
The `HomePage` is where the main interface of the app is displayed, which includes the list of tasks and a widget to add new tasks. The `HomePage` listens to the `HomeProvider` to update the UI dynamically.

### 2. HomeProvider (ViewModel Layer)
The `HomeProvider` is responsible for managing the state of the to-do items. It handles adding, removing, toggling tasks, and integrating with Siri to add predefined tasks. It also manages local caching via the `LocalCaching` service.

### 3. TodoItem (Model Layer)
The `TodoItem` class represents a to-do item and contains properties like `task` (the description of the task) and `isCompleted` (a boolean representing the task's completion status).

### 4. Siri Integration
In the `AllAppShortcuts.swift` file, Siri shortcuts are defined, and phrases that Siri can recognize are linked to actions in the app, such as adding tasks like "Prepare food" or "Go shopping."

## Contributing

Feel free to fork this repository and make pull requests if you'd like to contribute to the project! Here's how you can contribute:

1. Fork this repository.
2. Create a new branch for your feature/bugfix.
3. Commit your changes.
4. Push your branch to your fork.
5. Open a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Thank you for using the **Siri To-Do App**!
