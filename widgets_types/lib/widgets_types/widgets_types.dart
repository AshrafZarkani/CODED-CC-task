import 'dart:math';

import 'package:flutter/material.dart';

class WidgetsTypes extends StatelessWidget {
  const WidgetsTypes({super.key});

  @override
  Widget build(BuildContext context) {
    /// a widget that show case a Stateless and statfull widget
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Widget Types"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StatelessIconExample(),
            StatefulIconExample(),
          ],
        ),
      ),
    );
  }
}

class StatelessIconExample extends StatelessWidget {
  const StatelessIconExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    /// stateless widget example
    // var myColor = Colors.black;
    debugPrint("Stateless icon build called");
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.black,
          child: const Icon(
            Icons.abc,
            color: Colors.white,
            size: 40,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: () {
              /// calling a function to change the color of container will no
              /// do anything
              //myColor = Colors.brown;
            },
            child: const Text("Change Stateless color"))
      ],
    );
  }
}

class StatefulIconExample extends StatefulWidget {
  const StatefulIconExample({Key? key}) : super(key: key);

  /// create a State object, which will be used to maintain the state of the widget
  /// throughout its lifecycle.
  @override
  StatefulIconExampleState createState() => StatefulIconExampleState();
}

class StatefulIconExampleState extends State<StatefulIconExample> {
  /// list of Colors
  List listOfColor = [
    Colors.cyan,
    Colors.deepOrange,
    Colors.deepPurple,
  ];

  /// define a variable that holds the color blue
  var myColor = Colors.blue;

  /// It is used to initialize the state of the widget or any other one-time setup.
  @override
  void initState() {
    super.initState();

    /// re-asign the color variable to yellow
    /// this will ovveride the color from blue to yellow
    myColor = Colors.yellow;
    debugPrint("initState called");
  }

  @override
  void didChangeDependencies() {
    //provides an opportunity to react to changes in the widget’s dependencies
    super.didChangeDependencies();
    debugPrint("didChangeDependencies called");
  }

  @override
  void didUpdateWidget(covariant StatefulIconExample oldWidget) {
    /// parent widget rebuilds and updates the current widget
    super.didUpdateWidget(oldWidget);
    debugPrint("didUpdateWidget called");
  }

  @override
  void deactivate() {
    /// called If the widget is removed from the widget tree
    debugPrint("deactivate called");
    super.deactivate();
  }

  @override
  void dispose() {
    /// called when the widget is removed permanently from the widget tree
    debugPrint("didUpdateWidget called");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// responsible for constructing the widget’s UI and returns a widget tree.
    debugPrint("statefull widget build called");
    return Column(
      children: [
        Container(
          height: 160,
          width: 160,
          color: myColor,
          child: const Icon(
            Icons.ac_unit,
            color: Colors.black,
            size: 40,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: () {
              ///triggers a rebuild of the widge
              setState(() {
                /// the random constructor to pick a random color
                /// provided by flutter 
                myColor = listOfColor[Random().nextInt(listOfColor.length)];
              });
            },
            child: const Text("Change Statefull color"))
      ],
    );
  }
}
