import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class colrowicon extends StatelessWidget {
  const colrowicon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: 400,
        height: 700,
        child: Column(children: [
          Row(
            children: [
              InkWell(
                  onTap: (() {
                    print("oziaffaaaaaa");
                  }),
                  child: Icon(Icons.delete)),
            ],
          ),
          IconButton(
              onPressed: () {
                print("asdasdasdsadasdasdads");
              },
              icon: Icon(Icons.home)),
          Container(
            height: 400,
            width: 400,
            child: Image.asset(
              "assets/Icon-192.png",
              fit: BoxFit.fill,
            ),
          )
        ]),
      ),
    );
  }
}

class BulbOnOffScreen extends StatefulWidget {
  @override
  State<BulbOnOffScreen> createState() => _BulbOnOffScreenState();
}

class _BulbOnOffScreenState extends State<BulbOnOffScreen> {
  bool isOn = false;
  void changeState() {
    setState(() {
      isOn = !isOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bulb On OFF ")),
      body: Center(
        child: Column(children: [
          Container(
            height: 300,
            width: 300,
            child: Image.asset(
              isOn ? "assets/Icon-512.png" : "assets/Icon-192.png",
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            child: ElevatedButton(
                onPressed: changeState,
                child: Text(
                  isOn ? "OFF" : "ON",
                  style: TextStyle(fontSize: 50),
                )),
          )
        ]),
      ),
    );
  }
}
