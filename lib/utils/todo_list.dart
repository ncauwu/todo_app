import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TodoList extends StatelessWidget {
  const TodoList({
    super.key, 
    required this.taskName,
    required this.taskCompleted,
    this .onChanged,
    this.deleteFunction,
  });

  final String taskName;
  final bool taskCompleted;
  final Function (bool?)? onChanged;
  final VoidCallback? deleteFunction;


  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
          child: Container (
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 252, 245, 244), //ini buat bubble list  
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row( 
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(value: taskCompleted, 
                onChanged: onChanged,
                checkColor: Color(0xFF7D232D),
                activeColor: Color.fromARGB(255, 252, 245, 244),
                ),
                Expanded(
                  child: Text(
                    taskName,
                    style: TextStyle(
                      color: const Color(0xFF7D232D),
                      fontSize: 16,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Fredoka',
                  decoration: taskCompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                  decorationThickness: 3,
                    ),
                  ),
                ),
            IconButton(
              onPressed: deleteFunction, 
              icon: SvgPicture.asset('assets/icon/trashcat.svg',
              width: 20,
              height: 20
            ),
            )
              ],
            ),
          ),
);
  }
}