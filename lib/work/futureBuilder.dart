import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FB extends StatefulWidget {
  const FB({super.key});

  @override
  State<FB> createState() => _FBState();
}

class _FBState extends State<FB> {
  Future<List<String>> getString() async {
    await Future.delayed(Duration(seconds: 5));
    return ["pak", "china", "africa", "midleEast"];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Future")),
      body: FutureBuilder(
        future: getString(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<String> slist = snapshot.data!;
            return ListView.builder(
              itemCount: slist.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Text(slist[index]),
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
