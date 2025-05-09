import 'package:flutter_application_1/main.dart';


class ToDoDataBase {
  List toDoList =[];

  final _myBox = Hive.box('myBox');

  void createInitialData(){
    toDoList =[
      ["Make Tutorial", false],
      ["Do Excercise", false],
    ];
  }

  void loadData() { 
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDataBase(){
    _myBox.put("TODOLIST", toDoList);
  }
}