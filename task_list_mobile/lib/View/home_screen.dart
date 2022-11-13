import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_list_mobile/Components/task_item.dart';
import 'package:task_list_mobile/controller/task_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final TaskController taskController = TaskController();
  final int selectedIndex = 0;
  static TextStyle optionStyle =
      GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.bold);
  static List<Widget> widgetOptions = <Widget>[
    Text(
      "Index 0: Calendar",
      style: optionStyle,
    ),
    Text(
      "Index 1: Home",
      style: optionStyle,
    ),
    Text(
      "Index 2: New Task",
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Hi Guilherme!",
                style: GoogleFonts.nunito(
                  color: const Color(0xff161616),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "tasks for today!",
                style: GoogleFonts.nunito(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 600,
                child: ValueListenableBuilder(
                  valueListenable: task,
                  builder: (context, value, child) => const TaskItem(),
                ),
                /*child: ListView.builder(itemBuilder: (context, index) {
                    return TaskItem();
                  })*/
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 24,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: "Calendar",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_task),
              label: "New Task",
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.amber,
          onTap: (value) {},
        ),
      ),
    );
  }
}
