import 'package:flutter/material.dart';

// this is box within box

class ContainerCenterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container and Center')),
      body: Container(
        color: Colors.red,
        height: 300,
        width: 300,
        child: Center(
          child: Container(
            color: Colors.amber,
            height: 150,
            width: 150,
            child: Center(
              child: Container(
                height: 75,
                width: 75,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// button using contain

class ContainerUsingButton extends StatefulWidget {
  @override
  _ContainerUsingButtonState createState() => _ContainerUsingButtonState();
}

class _ContainerUsingButtonState extends State<ContainerUsingButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Row Example"),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 150,
              margin: EdgeInsets.only(left: 10, right: 10),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.green),
              child: Text(
                "React.js",
                style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
              ),
            ),
            Container(
              width: 150,
              margin: EdgeInsets.all(15.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.green),
              child: Text(
                "Flutter",
                style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
              ),
            ),
            Container(
              width: 150,
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.green),
              child: Text(
                "MySQL",
                style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: TextFormField(
                controller: null,
                decoration: InputDecoration(
                  hintText: 'Enter Name',
                  labelText: 'Provide Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4.5)),
                  ),
                ),
              ),
            )
          ]),
    );
  }
}
