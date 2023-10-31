import 'package:flutter/material.dart';

/// import the getwidget package
import 'package:getwidget/getwidget.dart';

class PackageExample extends StatelessWidget {
  const PackageExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// use the drawer widget from the package
      drawer: const GFDrawer(
        color: Colors.amber,
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text("Inforamtion"),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("getwidget Package example"),
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// use the button from the package
            GFButton(
              onPressed: () {
                debugPrint("clicked");
              },
              text: "Click me ",
            )
          ],
        ),
      ),
    );
  }
}
