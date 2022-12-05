import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Contact {
  String name;
  String contact;
  String? email;
  Contact({required this.name, required this.contact, this.email});
}

class MyListViewBuilder extends StatefulWidget {
  const MyListViewBuilder({Key? key}) : super(key: key);

  @override
  State<MyListViewBuilder> createState() => _MyListViewBuilderState();
}

class _MyListViewBuilderState extends State<MyListViewBuilder> {
  List<Contact> clist = [];
  void initState() {
    Contact c = Contact(name: 'Obaid', contact: '0312-1234567');
    clist.add(c);
    c = Contact(
        name: 'Zeeshan', contact: '0301-1234567', email: 'zeeshan@gmail.com');
    clist.add(c);
    c = Contact(name: 'Areesh', contact: '0300-1234567');
    clist.add(c);
    c = Contact(name: 'Amna', contact: '0312-1234567', email: 'amna@gmail');
    clist.add(c);
    c = Contact(name: 'Hamza', contact: '0301-1234567');
    clist.add(c);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
      ),
      body: ListView.builder(
        itemCount: clist.length,
        itemBuilder: (BuildContext cont, int index) {
          Contact c = clist[index];
          return Card(
            elevation: 10,
            shadowColor: Colors.orange,
            color: Colors.blueGrey,
            //surfaceTintColor: Colors.white,
            child: ListTile(
              leading: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  setState(() {
                    clist.removeAt(index);
                  });
                },
              ),
              shape: OutlineInputBorder(),
              title: Text(
                c.name,
                style: TextStyle(fontSize: 25),
              ),
              subtitle: Text(
                c.contact,
                style: TextStyle(fontSize: 20),
              ),
              trailing: Text(c.email == null ? "" : c.email!),
            ),
          );
        },
      ),
    );
  }
}
