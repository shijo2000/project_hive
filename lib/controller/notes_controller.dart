import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:project_hive/repository/boxRepository.dart';

import '../models/notes.dart';

class NotesController extends GetxController{
  final Box _observableBox = BoxRepository.getBox();
  Box get observableBox=> _observableBox;
  int get notesCount => _observableBox.length;
  createNote({required Note note }){
    _observableBox.add(note);
    update();
  }
  updateNote ({required int index , required Note note}){
    _observableBox.putAt(index, note);
    update();
  }
  deleteNote({required int index }){
    _observableBox.deleteAt(index);
    update();
  }
}