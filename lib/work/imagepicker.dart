import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:training/work/futureBuilder.dart';

class MySimpleImagePicker extends StatefulWidget {
  @override
  State<MySimpleImagePicker> createState() => _MySimpleImagePickerState();
}

class _MySimpleImagePickerState extends State<MySimpleImagePicker> {
  File? img;

  Container getImage() {
    if (img == null) {
      return Container(
        height: 100,
        width: 100,
        child: Image.asset(
          'assets/Icon-512.png',
          fit: BoxFit.fill,
        ),
      );
    } else {
      return Container(
        height: 100,
        width: 100,
        child: Image.file(
          img!,
          fit: BoxFit.fill,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getImage(),
            SizedBox(
              height: 10,
            ),
            Row(children: [
              ElevatedButton(
                  onPressed: () async {
                    XFile? selectedimg;
                    ImagePicker picker = ImagePicker();
                    selectedimg =
                        await picker.pickImage(source: ImageSource.camera);
                    if (selectedimg != null) {
                      setState(() {
                        img = File(selectedimg!.path);
                      });
                    }
                  },
                  child: Text('Camera', style: TextStyle(fontSize: 20))),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () async {
                    XFile? selectedimg;
                    ImagePicker obj = ImagePicker();
                    selectedimg =
                        await obj.pickImage(source: ImageSource.gallery);
                    if (selectedimg != null) {
                      setState(() {
                        img = File(selectedimg!.path);
                      });
                    }
                  },
                  child: Text('Gallery', style: TextStyle(fontSize: 20))),
            ])
          ]),
    );
  }
}

class MyImageWithListView extends StatefulWidget {
  const MyImageWithListView({Key? key}) : super(key: key);
  @override
  State<MyImageWithListView> createState() => _MyImageWithListViewState();
}

class _MyImageWithListViewState extends State<MyImageWithListView> {
  List<File> imgfiles = [];
  File? img;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image with list view'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            img == null
                ? Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      'assets/Icon-512.png',
                      fit: BoxFit.fill,
                    ))
                : Container(
                    height: 100,
                    width: 100,
                    child: Image.file(
                      img!,
                      fit: BoxFit.fill,
                    )),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () async {
                      XFile? file = await ImagePicker()
                          .pickImage(source: ImageSource.camera);
                      setState(() {
                        if (file != null) {
                          img = File(file.path);
                          imgfiles.add(img!);
                        }
                      });
                    },
                    child: Text('Camera')),
                SizedBox(
                  width: 100,
                ),
                ElevatedButton(
                    onPressed: () async {
                      XFile? file = await ImagePicker()
                          .pickImage(source: ImageSource.gallery);
                      setState(() {
                        if (file != null) {
                          img = File(file.path);
                          imgfiles.add(img!);
                        }
                      });
                    },
                    child: Text('Gallery'))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imgfiles.length,
                    itemBuilder: (contx, index) {
                      return Container(
                          height: 150,
                          width: 150,
                          child: Image.file(
                            imgfiles[index],
                            fit: BoxFit.fill,
                          ));
                    }))
          ]),
    );
  }
}
