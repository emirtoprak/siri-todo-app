import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:siri_todo_app/src/constants/app_constant.dart';
import 'package:siri_todo_app/src/core/services/local_caching.dart';
import 'package:siri_todo_app/src/pages/home/view/home_page.dart';
import 'package:siri_todo_app/src/pages/home/view_model/home_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalCaching.instance.init();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
      ],
      child: MaterialApp(
        title: AppConstant.title,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
