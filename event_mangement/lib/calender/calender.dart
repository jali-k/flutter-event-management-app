import 'package:event_mangement/calender/trapezoidal.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderHome extends StatefulWidget {
  const CalenderHome({super.key});

  @override
  State<CalenderHome> createState() => _CalenderHomeState();
}

class _CalenderHomeState extends State<CalenderHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(255, 30, 5, 84),
      //   elevation: 0, // Remove shadow
      //   leading: IconButton(
      //     icon: const Icon(Icons.menu),
      //     onPressed: () {}, // Handle menu action
      //   ),
      // ),
      body: Column(
        children: [
          Stack(children:[
         const TrapezoidalImage(),
         Positioned(
           top: 0,
           left: 0,
           right: 0,
           child: Container(
             padding: const EdgeInsets.all(10),
             alignment: Alignment.topLeft,
             child: const Text("Calender", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
           )
         )
        ],),
          TableCalendar(
            firstDay: DateTime.utc(2024, 01, 15),
            lastDay: DateTime.utc(2040, 01, 16),
            focusedDay: DateTime.now(),
          ),
        ],
      ),
    );
  }
}

class TrapezoidClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    // Define the trapezoid shape's path using lineTo and close
    path.lineTo(0, size.height);
    // ... (adjust points to create the desired trapezoid shape)
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TrapezoidClipper oldClipper) => false;
}
