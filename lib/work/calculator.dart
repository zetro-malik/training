import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatelessWidget {
  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();
  TextEditingController result = TextEditingController();
  void add() {
    int n1 = int.parse(number1.text);
    int n2 = int.parse(number2.text);
    int res = n1 + n2;
    result.text = res.toString();
  }

  void divide() {
    int n1 = int.parse(number1.text);
    int n2 = int.parse(number2.text);
    double res = n1 / n2;
    result.text = res.toString();
  }

  void multiply() {
    int n1 = int.parse(number1.text);
    int n2 = int.parse(number2.text);
    int res = n1 * n2;
    result.text = res.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Color.fromARGB(100, 155, 255, 255),
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextFormField(
              controller: number1,
              style: TextStyle(fontSize: 30),
              decoration: InputDecoration(
                  hintText: "Enter Number 1",
                  labelText: "Number 1",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)))),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              style: TextStyle(fontSize: 30),
              decoration: InputDecoration(
                  hintText: "Enter Number 2",
                  labelText: "Number 2",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)))),
              controller: number2,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              style: TextStyle(fontSize: 30),
              readOnly: true,
              decoration: InputDecoration(
                  hintText: "Answer",
                  labelText: "Answer",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)))),
              controller: result,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 15)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        elevation: MaterialStateProperty.all(30.0)),
                    onPressed: () {
                      add();
                    },
                    child: Text("ADD")),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 15)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        elevation: MaterialStateProperty.all(30.0)),
                    onPressed: () {
                      int n1 = int.parse(number1.text);
                      int n2 = int.parse(number2.text);
                      int res = n1 - n2;
                      result.text = res.toString();
                    },
                    child: Text("Subtract")),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 15)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        elevation: MaterialStateProperty.all(10.0)),
                    onPressed: divide,
                    child: Text("Divide")),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 15)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        elevation: MaterialStateProperty.all(30.0)),
                    onPressed: multiply,
                    child: Text("Multiply"))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CalculatorPage1 extends StatefulWidget {
  @override
  State<CalculatorPage1> createState() => _CalculatorPage1State();
}

class _CalculatorPage1State extends State<CalculatorPage1> {
  TextEditingController number1 = TextEditingController();

  TextEditingController number2 = TextEditingController();

  TextEditingController result = TextEditingController();

  String answer = "Result: ";

  void add() {
    int n1 = int.parse(number1.text);
    int n2 = int.parse(number2.text);
    int res = n1 + n2;
    setState(() {
      answer = "Result :" + res.toString();
    });
  }

  void divide() {
    int n1 = int.parse(number1.text);
    int n2 = int.parse(number2.text);
    double res = n1 / n2;
    setState(() {
      answer = "Result :" + res.toString();
    });
  }

  void multiply() {
    int n1 = int.parse(number1.text);
    int n2 = int.parse(number2.text);
    int res = n1 * n2;
    result.text = res.toString();
    setState(() {
      answer = "Result :" + result.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: number1,
              style: TextStyle(fontSize: 30),
              decoration: InputDecoration(
                  hintText: "Enter Number 1",
                  labelText: "Number 1",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)))),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              style: TextStyle(fontSize: 30),
              decoration: InputDecoration(
                  hintText: "Enter Number 2",
                  labelText: "Number 2",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)))),
              controller: number2,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(201, 4, 75, 200),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Center(
                  child: Text(
                answer,
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
              height: 50,
              width: 400,
            ),
            Row(
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 15)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        elevation: MaterialStateProperty.all(30.0)),
                    onPressed: add,
                    child: Text("ADD")),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 15)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        elevation: MaterialStateProperty.all(30.0)),
                    onPressed: () {
                      int n1 = int.parse(number1.text);
                      int n2 = int.parse(number2.text);
                      int res = n1 - n2;

                      setState(() {
                        answer = "Result : " + res.toString();
                      });
                    },
                    child: Text("Subtract")),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 15)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        elevation: MaterialStateProperty.all(10.0)),
                    onPressed: divide,
                    child: Text("Divide")),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 15)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        elevation: MaterialStateProperty.all(30.0)),
                    onPressed: multiply,
                    child: Text("Multiply"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
