import 'package:flutter/material.dart';

class TaskSoluation extends StatefulWidget {
  const TaskSoluation({Key? key}) : super(key: key);

  @override
  TaskSoluationState createState() => TaskSoluationState();
}

class TaskSoluationState extends State<TaskSoluation> {
  bool swap = true;

  void toggleColors() {
    setState(() {
      swap = !swap;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Swap Colors"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          toggleColors();
        },
        backgroundColor: Colors.green,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Swap Colors"),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              color: swap ? Colors.red : Colors.blue,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              width: 150,
              color: swap ? Colors.blue : Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
