import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project_hive/models/notes.dart';
import 'package:project_hive/repository/boxRepository.dart';
import 'package:project_hive/screens/notes_screen.dart';

void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(NoteAdapter());
  await BoxRepository.openBox();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crud',
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return NoteScreen();
  }
}
