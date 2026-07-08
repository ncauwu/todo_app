import 'package:flutter/material.dart';
import 'package:todo_app/utils/todo_list.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();
  List toDoList = [
    ['Belajar Flutter', false],
    ['Mandi', false],
    ['Kasih makan moolen', false],
    ['sahur', false],
  ];

  void CheckBoxChanged(int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }
  void saveNewTask() {
    if (_controller.text.isNotEmpty){ // Cek jika input ga kosong, tambahkan tugas
      setState(() {
        toDoList.add([_controller.text, false]);
        _controller.clear(); // Clear the text field after adding the task
      });// Implementasi logika untuk menyimpan tugas baru
    }
  }

  void deleteTask(int index) {
    setState(() {
      toDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7E5E1), //ini buat background
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
          decoration: BoxDecoration(
            color: const Color(0xFFEF98A8), //ini buat bubble app bar
            borderRadius: BorderRadius.circular(25),
          ),
          child: const Text(
          'My to-do list!',
          style: TextStyle(
            color: const Color(0xFF7D232D),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Fredoka',
          ),
        ),
          ),
        backgroundColor: const Color(0xFFF8ACB9), //ini buat bg app bar
        ),
      body: ListView.builder(
        itemCount: toDoList.length, 
        itemBuilder: (BuildContext context, index ){
        return  TodoList(
          taskName: toDoList[index][0],
          taskCompleted: toDoList[index][1],
          onChanged: (value) => CheckBoxChanged(index),  // Handle checkbox state change,
          deleteFunction: () => deleteTask(index),
        );
      } //body ListView.builder
      ),
      floatingActionButton: Row(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Add a new task here!',
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 137, 81, 88),
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Fredoka',
                  ),
                filled: true,
                fillColor:Color.fromARGB(255, 244, 176, 189),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: const Color(0xFFEF98A8)
                  ),
                  borderRadius: BorderRadius.circular(15)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: const Color(0xFFEF98A8)
                  ),
                  borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
          )
        ),
          FloatingActionButton(
            onPressed: saveNewTask,
            child: 
              const Icon(Icons.add, color: Color(0xFF7D232D)),
              backgroundColor: const Color(0xFFEF98A8),
          ),
        ],
      ),
    );
  }
}