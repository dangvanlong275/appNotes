import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notes/page/notes_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'App Notes';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.green[200],
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.yellow[400],
            elevation: 0,
          ),
        ),
        home: NotesPage(),
      );
}
