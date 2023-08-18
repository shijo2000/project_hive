import 'package:hive/hive.dart';
import 'package:project_hive/models/notes.dart';

class BoxRepository{
  static String boxName ="CRUD";
  static openBox() async => await Hive.openBox<Note>(boxName);
  static Box getBox()=> Hive.box<Note>(boxName);
  static closeBox() async => Hive.box(boxName).close();
}